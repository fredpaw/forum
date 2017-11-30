<?php

namespace Tests\Feature;

use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class ProfilesTest extends TestCase
{
    use RefreshDatabase;

    /** @test **/
    public function a_user_has_a_profile()
    {
        $user = create('App\User');

        $this->get(url("/")."/profiles/".$user->name)
            ->assertSee($user->name);
    }

    /** @test **/
    public function profiles_display_all_threads_created_by_the_associate_user()
    {
        $this->signIn();

        $thread = create('App\Thread', ['user_id' => auth()->id()]);

        $this->get(url("/")."/profiles/".auth()->user()->name)
            ->assertSee($thread->title)
            ->assertSee($thread->body);
    }
}