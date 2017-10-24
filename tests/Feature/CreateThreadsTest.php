<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class CreateThreadsTest extends TestCase
{
    use RefreshDatabase;

    /** @test **/
    public function guests_may_not_create_threads()
    {
        $this->expectException('Illuminate\Auth\AuthenticationException');

        $thread = make('App\Thread');

        $this->post(url('/').'/threads', $thread->toArray());
    }

    /** @test **/
    public function an_authenticated_user_can_create_new_form_thread()
    {
        // Given we have a signed in user
        $this->signIn();

        // When we hit the endpoint ot create a new thread
        $thread = make('App\Thread');

        $this->post(url('/').'/threads', $thread->toArray());

        // Then, when we visit the thread page. We should see the new thread
        $this->get($thread->path())
            ->assertSee($thread->title)
            ->assertSee($thread->body);
    }
}
