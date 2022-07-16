<?php

namespace App\View\Components;

use Illuminate\View\Component;

// use Livewire\Component;


class HomeLayout extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
   
     public $search = "";

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('layouts.home-layout');
    }
}
