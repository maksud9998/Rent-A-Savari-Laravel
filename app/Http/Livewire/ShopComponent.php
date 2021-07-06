<?php

namespace App\Http\Livewire;

use App\Models\Car;
use Livewire\Component;
use Livewire\WithPagination;
class ShopComponent extends Component
{
    public $sorting;
    public $pagesize;

        public function mount()
        {
            $this->sorting = "default";
            $this->pagesize = "12";
        }

    use WithPagination;
    public function render()
    {       
            if($this->sorting=='date')
            {

                $cars = Car::orderBy('created_at','DESC')->paginate($this->pagesize);
            }
            else if($this->sorting=='price')
            {
                $cars = Car::orderBy('rent_price','ASC')->paginate($this->pagesize);
            }
            else if($this->sorting=='price-desc')
            {
                $cars = Car::orderBy('rent_price','DESC')->paginate($this->pagesize);
            }
            else
            {
                $cars = Car::paginate($this->pagesize);
            }

        return view('livewire.shop-component',['cars'=>$cars])->layout("layouts.base");
    }
}
