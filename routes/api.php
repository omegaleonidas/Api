<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApiController;
use App\Http\Controllers\pegawaiController; 
use App\Http\Controllers\ApiPegawai;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\cutiController;
use App\Http\Controllers\jabatanController;
use App\Http\Controllers\informasiController;




// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });






Route::group(['middleware' => 'auth:sanctum'], function(){

 
    Route::post('/pegawaiTambah',[pegawaiController::class,'ApiPegawaiTambah']);;
    Route::post('/ApiCutiTambah',[cutiController::class,'ApiCutiTambah']);;
    Route::post('/ApiJabatanAdd',[jabatanController::class,'ApiJabatanAdd']);;
    Route::get('/ApiInformasiShow',[informasiController::class,'ApiInformasiShow']);;
    Route::get('/pegawaiShow/{id_pegawai}',[pegawaiController::class,'ApiPegawaiShow']);;   
    Route::put('/ApiPegawaiEdit/{id_pegawai}',[pegawaiController::class,'ApiPegawaiEdit']);;     
 
    Route::get('/logout', [AuthController::class, 'logout']);
});



  



Route::post('/login', [AuthController::class, 'login']);



//Route::get('/pegawaiShow',[pegawaiController::class,'ApiPegawaiShow']);;
