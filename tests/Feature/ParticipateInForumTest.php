<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class ParticipateInForumTest extends TestCase
{
    use refreshDatabase;

    /** @test **/
    public function unauthenticate_users_may_not_add_replies()
    {
        $this->expectException('Illuminate\Auth\AuthenticationException');

        $thread = Factory('App\Thread')->create();

        $reply = Factory('App\Reply')->make();
        $this->post($thread->path().'/replies', $reply->toArray());
    }

    /** @test **/
    public function an_authenticated_user_may_participate_in_form_threads()
    {
        //create a user
        $user = Factory('App\User')->create();

        //sign in the user
        $this->be($user);

        //exist an thread
        $thread = Factory('App\Thread')->create();

        //user reply to the thread
        $reply = Factory('App\Reply')->make();
        $this->post('/threads/'.$thread->id.'/replies', $reply->toArray());

        //The reply should be visible on the page.
        $this->post($thread->path())
             ->assertSee($reply->body);
    }
}