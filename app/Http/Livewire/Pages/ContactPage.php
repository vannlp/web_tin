<?php

namespace App\Http\Livewire\Pages;

use Livewire\Component;

class ContactPage extends Component
{
    public function render()
    {
        return view('livewire.pages.contact-page',[
            
        ])->layout('layouts/home-layout', ['title' => 'Trang liên hệ']);
    }
}
