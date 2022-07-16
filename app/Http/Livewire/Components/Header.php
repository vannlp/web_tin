<?php

namespace App\Http\Livewire\Components;

use Livewire\Component;
use App\Models\Post;

class Header extends Component
{
    public $search = '';

    // public function updatingSearch()
    // {
    //     $this->resetPage();
    // }


    public function render()
    {
        $data = [];

        if($this->search != '') {
            $data = Post::where('title', 'like', '%'.$this->search.'%')->get();
        }

        return view('livewire.components.header',[
            'searchdata' => $data
        ]);
    }
}
