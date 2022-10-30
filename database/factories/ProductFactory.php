<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use Faker\Generator as Faker;
use App\Model\Product;
use App\User;

$factory->define(Product::class, function (Faker $faker) {
    return [
       'name' => $faker->word,
       'detail' =>$faker->paragraph,
       'price' =>$faker->numberBetween(100,1000),
       'stock' =>$faker->randomDigit,
       'discount' =>$faker->numberBetween(2,30),
       'user_id' => function(){

       	return App\User::all()->random();
       }
    ];
});
