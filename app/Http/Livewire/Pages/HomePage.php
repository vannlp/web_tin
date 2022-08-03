<?php

namespace App\Http\Livewire\Pages;

use Livewire\Component;
use App\Models\Post;
use Livewire\WithPagination;

class HomePage extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';

    public function mount() {
    }

    public function render()
    {
        


        return view('livewire.pages.home-page',
        [
            'title' => 'Trang chủ',
            'posts' => Post::paginate(10)
        ])->layout('layouts/home-layout');
    }
}
