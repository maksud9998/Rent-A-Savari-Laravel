<?php

namespace Database\Factories;

use App\Models\Car;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class CarFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Car::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $car_name = $this->faker->unique()->words($nb = 4, $asText = true);
        $slug = Str::slug($car_name);
        return [
            'car_name' => $car_name,
            'car_slug' => $slug,
            'car_image' => 'digital' . $this->faker->unique()->numberBetween(1, 22),
            'car_no_plate' => $this->faker->text(10),
            'body_type' => $this->faker->text(10),
            'seat_capacity' => $this->faker->numberBetween(2, 7),
            'transmission_type' => $this->faker->text(9),
            'fuel_type' => $this->faker->text(6),
            'rent_price' => $this->faker->numberBetween(1, 22),
            'category_id' => $this->faker->numberBetween(1, 5)


        ];
    }
}
