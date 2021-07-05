<?php

namespace App\Http\Livewire;

use App\Models\Car;
use Livewire\Component;

class DetailsComponent extends Component
{   
    public $slug;

    public function mount($slug)
    {
        $this->slug = $slug;
    }


    public function render()

    
    {
        $car = Car::where('car_slug',$this->slug)->first();
        return view('livewire.details-component',['car'=>$car])->layout('layouts.base');
    }
}
