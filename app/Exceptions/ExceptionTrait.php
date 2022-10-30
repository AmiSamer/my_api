<?php

namespace App\Exceptions;

use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\HttpFoundation\Response;


trait ExceptionTrait

{
	public function apiException($request, $e){


		 if($this->isModel($e)){

            // return response()->json(['errors'=>'Product Model Not Found'],Response::HTTP_NOT_FOUND);


            //alternative way to show response message by using function are given below 

            return $this->modelResponseMsg($e);
         }


           if($this->isHttp($e)){

            // return response()->json(['errors'=>'Incorrect Route'],Response::HTTP_NOT_FOUND);



             //alternative way to show response message by using function are given below

            return $this->httpResponseMsg($e);
         }



         return parent::render($request, $e);
	}








	protected function isModel($e){

		return $e instanceof ModelNotFoundException;

	}

	protected function isHttp($e){

		return $e instanceof NotFoundHttpException;
	}


   protected function modelResponseMsg($e){

   	return response()->json(['errors'=>'Product Model Not Found'],Response::HTTP_NOT_FOUND);

   }

   protected function httpResponseMsg($e){

   	return response()->json(['errors'=>'Incorrect Route'],Response::HTTP_NOT_FOUND);

   }



}



?>