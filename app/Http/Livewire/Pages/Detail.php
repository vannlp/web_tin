<?php

namespace App\Http\Livewire\Pages;

use App\Models\Post;
use Livewire\Component;

class Detail extends Component
{
    public $idPost;
    public $post;

    public function mount($slug) {
        $this->post = Post::where('slug', $slug)->first();
    }


    public function render()
    {
        return view('livewire.pages.detail',[
            'post' => $this->post
        ])->layout('layouts/home-layout', ['title' => 'Tin tức số ff']);
    }
}
