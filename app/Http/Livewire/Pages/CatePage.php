<?php

namespace App\Http\Livewire\Pages;

use Livewire\Component;
use App\Models\Post;
use App\Models\Category;

class CatePage extends Component
{
    public $slug;
    public $posts = [];

    public function mount($slug) {
        $this->slug = $slug;     
    }

    public function render()
    {
        $category_id = Category::where('slug', $this->slug)->value('id');
        $this->posts = Post::where('category_id', $category_id)->get();
        // dd($postss);
        return view('livewire.pages.cate-page',[
            'posts' => $this->posts
        ])->layout('layouts/home-layout', ['title' => 'Danh mục tin tức']);
    }
}
