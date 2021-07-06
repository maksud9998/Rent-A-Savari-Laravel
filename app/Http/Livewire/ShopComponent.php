<?php

namespace App\Http\Livewire;

use App\Models\Car;
use Livewire\Component;
use Livewire\WithPagination;
use Cart;
class ShopComponent extends Component

{



    public $sorting;
    public $pagesize;

        public function mount()
        {
            $this->sorting = "default";
            $this->pagesize = "13";
        }


            public function store($car_id,$car_name,$rent_price)
            {
                Cart::add($car_id,$car_name,1,$rent_price)->associate('App\Models\Car');
                session()->flash('success_message','Item added in Cart');
                return redirect()->route('car.cart');
            }



    use WithPagination;
    public function render()
    {       
            if($this->sorting=='date')
            {

                $cars = Car::orderBy('created_at','DESC')->paginate($this->pagesize);
            }
            else if($this->sorting=="price")
            {
                $cars = Car::orderBy('rent_price','ASC')->paginate($this->pagesize);
            }
            else if($this->sorting=="price-desc")
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
