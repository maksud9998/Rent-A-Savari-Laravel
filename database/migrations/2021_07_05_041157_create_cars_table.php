<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCarsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cars', function (Blueprint $table) {
            $table->id();
            $table->string('car_name')->unique();
            $table->string('car_slug')->unique();
            $table->string('car_image')->nullable();
            $table->string('car_no_plate')->unique();
            $table->string('body_type');
            $table->integer('seat_capacity');
            $table->string('transmission_type');
            $table->string('fuel_type');
            $table->decimal('rent_price');
            $table->enum('booking_status',['instock','outofstock'])->default('instock');
            $table->enum('car_status',['active','inactive'])->default('active');
            $table->bigInteger('category_id')->unsigned()->nullable();
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cars');
    }
}
