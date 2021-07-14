<?php

namespace App\Http\Livewire;

use Livewire\Component;

class DocumentsComponent extends Component
{
    public function render()
    {
        return view('livewire.documents-component')->layout("layouts.base");
    }
}
