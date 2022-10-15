<?php

namespace App\Http\Resources\Product;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductCollection extends JsonResource
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

            'name' => $this->name,
            'total_price' =>  round((1-($this->discount/100))*$this->discount,2),
            'discount' => $this->discount,
            'product_ratings' =>  $this->reviews->count() > 0? round($this->reviews->sum('star')/$this->reviews->count(),2) : 'no ratings',
            'href' => route('products.show',$this->id)

        ];
    }
}
