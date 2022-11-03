<?php

namespace App\Http\Resources;
use Illuminate\Http\Resources\Json\JsonResource;

class ReviewResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
         //this line for testing

         return [
        
        'id' => $this->id,
        'customer_name' => $this->customer,
        'body' => $this->review,
        'star' => $this->star
    ];
    }
}
