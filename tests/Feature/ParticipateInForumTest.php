<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class ParticipateInForumTest extends TestCase
{
    use refreshDatabase;

    /** @test **/
    public function unauthenticated_users_may_not_add_replies()
    {
        $this->withExceptionHandling()
            ->post('/threads/channel/1/replies', [])
            ->assertRedirect('login');
    }

    /** @test **/
    public function an_authenticated_user_may_participate_in_form_threads()
    {
        //create a user

        //sign in the user
        $this->be($user = factory('App\User')->create());

        //exist an thread
        $thread = factory('App\Thread')->create();

        //user reply to the thread
        $reply = factory('App\Reply')->make();

        $this->post($thread->path().'/replies', $reply->toArray());

        //The reply should be visible on the page.
        $this->get($thread->path())
             ->assertSee($reply->body);
    }
}
