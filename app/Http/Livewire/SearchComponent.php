<?php

namespace App\Http\Livewire;

use App\Models\Car;
use App\Models\Category;
use Livewire\Component;
use Livewire\WithPagination;
use Cart;
class SearchComponent extends Component

{



    public $sorting;
    public $pagesize;
    
    public $search;
    public $car_cat;
    public $car_cat_id;

        public function mount()
        {
            $this->sorting = "default";
            $this->pagesize = "13";
            $this->fill(request()->only('search','car_cat','car_cat_id'));
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

                $cars = Car::where('car_name','like','%'.$this->search . '%')->where('category_id','like','%'.$this->car_cat_id.'%')->orderBy('created_at','DESC')->paginate($this->pagesize);
            }
            else if($this->sorting=="price")
            {
                $cars = Car::where('car_name','like','%'.$this->search . '%')->where('category_id','like','%'.$this->car_cat_id.'%')->orderBy('created_at','DESC')->orderBy('rent_price','ASC')->paginate($this->pagesize);
            }
            else if($this->sorting=="price-desc")
            {
                $cars = Car::where('car_name','like','%'.$this->search . '%')->where('category_id','like','%'.$this->car_cat_id.'%')->orderBy('created_at','DESC')->orderBy('rent_price','DESC')->paginate($this->pagesize);
            }
            else
            {
                $cars = Car::where('car_name','like','%'.$this->search . '%')->where('category_id','like','%'.$this->car_cat_id.'%')->orderBy('created_at','DESC')->paginate($this->pagesize);
            }

            $categories = Category::all();

        return view('livewire.search-component',['cars'=>$cars,'categories'=> $categories])->layout("layouts.base");
    }
}
