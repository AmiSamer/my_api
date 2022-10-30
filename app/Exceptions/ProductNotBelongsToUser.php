<?php

namespace App\Exceptions;

use Exception;

class ProductNotBelongsToUser extends Exception
{
   public function render(){


      return ['errors'=>'This Product is not belongs to current User'];

   }
}
