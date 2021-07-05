<?php

namespace App\Http\Livewire;

use App\Models\Car;
use Livewire\Component;
use Livewire\WithPagination;
class ShopComponent extends Component
{
    use WithPagination;
    public function render()
    {
            $cars = Car::paginate(12);
        return view('livewire.shop-component',['cars'=>$cars])->layout("layouts.base");
    }
}
