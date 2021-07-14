<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('last_name');
            $table->string('first_name');
            $table->bigInteger('phone_no1')->unique();
            $table->bigInteger('phone_no2')->nullable();
            $table->char('gender')->nullable();
            $table->date('dob')->nullable();
            $table->date('join_date')->nullable();
            $table->text('address')->nullable();
            $table->string('area')->nullable();
            $table->string('city')->nullable();
            $table->string('state')->nullable();
            $table->integer('pincode')->nullable();
            $table->string('profile_img')->nullable();
            $table->integer('license_no');
            $table->string('license_front_img')->nullable();
            $table->string('license_back_img')->nullable();
            $table->string('address_proof_type')->nullable();
            $table->string('address_proof_no')->nullable();
            $table->string('address_proof_front_img')->nullable();
            $table->string('address_proof_back_img')->nullable();
            $table->enum('status', ['active', 'inactive'])->default('active');
            $table->enum('restriction', ['restricted', 'unrestricted'])->default('unrestricted');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->foreignId('current_team_id')->nullable();
            $table->string('profile_photo_path', 2048)->nullable();
            $table->string('utype')->default('USR')->comment('ADM for admin and USR for user or customer ');
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
        Schema::dropIfExists('users');
    }
}
