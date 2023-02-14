<?php

namespace App\Http\Resources\Product;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return  [
            'Name'              => $this->product_name,
            'Description'       => $this->product_details,
            'Price'             => $this->product_price,
            'Stock'             => $this->product_stock == 0 ? 'Out of Stock' : $this->product_stock,
            'Discount'          => $this->product_discount,
            'TotalPrice'        => round((1-($this->product_discount/100)) * $this->product_price,2),
            'Rating'            => $this->reviews->count() >0 ? round($this->reviews->sum('star')/$this->reviews->count(),2) : 'No rating yet',
            'Href'              =>[
            'Reviews'           =>route('reviews.index',$this->id),
            
            ],
            
        ];
    }
}
