<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use Faker\Generator as Faker;
use App\Model\Review;
use App\Model\Product;

$factory->define(Review::class, function (Faker $faker) {
    return [
        
        'product_id' => function(){
        	return Product::all()->random();
        },
        'customer' => $faker->word,
        'review' => $faker->paragraph,
        'star' => $faker->numberBetween(0,5)
    ];
});
