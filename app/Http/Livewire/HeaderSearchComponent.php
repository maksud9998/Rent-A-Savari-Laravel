<?php

namespace App\Http\Livewire;

use App\Models\Category;
use Livewire\Component;

class HeaderSearchComponent extends Component
{

    public $search;
    public $car_cat;
    public $car_cat_id;

    public function mount()
    {
            $this->car_cat = 'All Category';
            $this->fill(request()->only('search','car_cat','car_cat_id'));

    }



    public function render()
    {
        $categories = Category::all();
        return view('livewire.header-search-component',['categories'=>$categories]);
    }
}
