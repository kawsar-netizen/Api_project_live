<?php

namespace App\Http\Resources\Product;

use Illuminate\Http\Resources\Json\Resource;

class ProductCollection extends Resource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'Name'              => $this->product_name,
            'TotalPrice'        => round((1-($this->product_discount/100)) * $this->product_price,2),
            'Rating'            => $this->reviews->count() >0 ? round($this->reviews->sum('star')/$this->reviews->count(),2) : 'No rating yet',
            'Discount'          => $this->product_discount,
            'Href'              =>[
                'Link'           =>route('products.show',$this->id),
                
                ],
        ];
    }
}
