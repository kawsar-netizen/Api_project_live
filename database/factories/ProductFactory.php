<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\User;
use App\Model\Product;
use Faker\Generator as Faker;

$factory->define(Product::class, function (Faker $faker) {
    return [
        'product_name' => $this->faker->word,
        'product_details' => $this->faker->paragraph,
        'product_price' => $this->faker->numberBetween(100,1000),
        'product_stock' => $this->faker->randomDigit,
        'product_discount' => $this->faker->numberBetween(2,30),
        'user_id' => function(){
            return User::all()->random();
        }
    ];
});
