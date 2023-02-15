<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */

    public function rules()
    {
        return [
            'product_name' => 'required|max:225|unique:products',
            'product_details' => 'required',
            'product_price'=> 'required|max:10',
            'product_stock' => 'required|max:6',
            'product_discount'=>'required|max:2'
        ];
    }
}
