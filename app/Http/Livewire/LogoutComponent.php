<?php

namespace App\Http\Livewire;

use Livewire\Component;

class LogoutComponent extends Component
{
    public function render()
    {
        return view('livewire.logout-component')->layout("layouts.base");
    }
}
