<?php
namespace App\Exceptions;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

trait ExceptionTrait
{
    public function apiException($request ,$e){

        if($this->isModel($e)){
          return $this->ModelResponse($e);
        }
        
        if($this->isHttp($e)){
          return  $this->HttpResponse($e);
        }

        return parent::render($request, $e);
        
    }

    public function isModel($e){
        return $e instanceof ModelNotFoundException;
    }

    public function isHttp($e){
        return $e instanceof NotFoundHttpException;
    }

    public function ModelResponse($e){
        return response()->json([
            'error' => "Product Model Not Found",
        ],404);
    }

    public function HttpResponse($e){
        return response()->json([
            'error' => "Incorrect Route",
        ],404);
    }

}



?>