<?php

namespace App\Model;

use App\Model\Review;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'product_name','product_details','product_price','product_stock','product_discount',
    ];

    public function reviews()
    {
        return $this->hasMany(Review::class);
    }
}
