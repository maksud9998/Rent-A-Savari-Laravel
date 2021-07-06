<?php

namespace App\Http\Livewire;

use App\Models\Car;
use Livewire\Component;
use Cart;

class DetailsComponent extends Component
{   
    public $slug;

    public function mount($slug)
    {
        $this->slug = $slug;
    }

    public function store($car_id,$car_name,$rent_price)
    {
        Cart::add($car_id,$car_name,1,$rent_price)->associate('App\Models\Car');
        session()->flash('success_message','Item added in Cart');
        return redirect()->route('car.cart');
    }




    public function render()

    
    {
        $car = Car::where('car_slug',$this->slug)->first();
        return view('livewire.details-component',['car'=>$car])->layout('layouts.base');
    }
}
