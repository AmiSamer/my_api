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
        // return parent::toArray($request);

        return [

            'name' => $this->name,
            'product_details' => $this->detail,
            'product_price' => $this->price,
            'stock' => $this->stock == 0 ? 'nothing is in stock' : $this->stock,
            'discount_on_product' => $this->discount,
            'total_price' =>  round((1-($this->discount/100))*$this->discount,2),
            'product_ratings' =>  $this->reviews->count() > 0? round($this->reviews->sum('star')/$this->reviews->count(),2) : 'no ratings',
            'href' => route('reviews.index',$this->id)

        ];
    }
}
