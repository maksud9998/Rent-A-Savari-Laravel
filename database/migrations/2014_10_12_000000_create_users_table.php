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
            $table->integer('phone_no1')->unique();
            $table->integer('phone_no2')->unique();
            $table->char('gender');
            $table->date('dob');
            $table->date('join_date');
            $table->text('address');
            $table->string('area');
            $table->string('city');
            $table->string('state');
            $table->integer('pincode');
            $table->string('profile_img')->nullable();
            $table->integer('license_no');
            $table->string('license_front_img');
            $table->string('license_back_img');
            $table->string('address_proof_type');
            $table->string('address_proof_no');
            $table->string('address_proof_front_img');
            $table->string('address_proof_back_img');
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
