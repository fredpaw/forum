<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class ReadThreadsTest extends TestCase
{
    use RefreshDatabase;

    protected $thread;

    public function setUp()
    {
        parent::setUp();

        $this->thread = factory('App\Thread')->create();
    }

    /** @test **/
    public function a_user_can_view_all_threads()
    {

        $this->get('/threads')
             ->assertSee($this->thread->title);
    }

    /** @test **/
    public function a_user_can_read_a_single_thread()
    {
        $this->get('/threads/'.$this->thread->channel->slug.'/'.$this->thread->id)
             ->assertSee($this->thread->title);
    }

    /** @test **/
    public function a_user_can_read_replies_that_are_associated_with_a_thread()
    {
        $reply = factory('App\Reply')->create(['thread_id' => $this->thread->id]);

        $this->get('/threads/'.$this->thread->channel->slug.'/'.$this->thread->id)
             ->assertSee($reply->body);
    }

    /** @test **/
    public function a_user_can_filter_threads_according_to_a_channel()
    {
        $channel = create('App\Channel');

        $threadInChannel = create('App\Thread', ['channel_id' => $channel->id]);
        $threadNotInChannel = create('App\Thread');

        $this->get(url('/').'/threads/'.$channel->slug)
            ->assertSee($threadInChannel->title)
            ->assertDontSee($threadNotInChannel->title);
    }

    /** @test **/
    public function a_user_can_filter_threads_by_any_username()
    {
        $this->signIn(create('App\User', ['name' => 'JohnDoe']));

        $threadByJohn = create('App\Thread', ['user_id' => auth()->id()]);
        $threadNotByJohn = create('App\Thread');

        $this->get('threads?by=JohnDoe')
            ->assertSee($threadByJohn->title)
            ->assertDontSee($threadNotByJohn->title);
    }

    /** @test **/
    public function a_user_can_filter_threads_by_popularity()
    {
        // Given we have three threads
        // with 2 replies, 3 replies, and 0 replies, respectively.
        $threadWithTwoReplies = create('App\Thread');
        create('App\Reply', ['thread_id' => $threadWithTwoReplies->id], 2);

        $threadWithThreeReplies = create('App\Thread');
        create('App\Reply', ['thread_id' => $threadWithThreeReplies->id], 3);

        $threadWithNoReplies = $this->thread;

        // when I filter all threads by popularity
        $response = $this->getJson('threads?popular=1')->json();

        // then they should be returned from most replies to least.
        $this->assertEquals([3,2,0], array_column($response, 'replies_count'));
    }
}
