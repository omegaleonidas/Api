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
use App\Http\Controllers\absensiController;




// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });






Route::group(['middleware' => 'auth:sanctum'], function(){

 

    Route::post('/ApiPegawai',[ApiPegawai::class,'create']);
    Route::post('/ApiCutiTambah',[cutiController::class,'ApiCutiTambah']);
    Route::post('/ApiJabatanAdd',[jabatanController::class,'ApiJabatanAdd']);
    Route::get('/ApiAbsensiShow',[absensiController::class,'ApiAbsensiShow']);
    Route::get('/detailAbsensiShow/{id_pegawai}',[absensiController::class,'detailAbsensiShow']);
    Route::post('/ApiAbsensi',[absensiController::class,'ApiAbsensi']); 
    // Route::post('/InsertDataSore/{}',[absensiController::class,'ApiAbsensi']); 
    Route::put('/ApiAbsensiEdit/{id_absensi}',[absensiController::class,'ApiAbsensiEdit']);  
  
    Route::put('/updateById/{id_pegawai}',[ApiPegawai::class,'updateById']);
    


    Route::get('/ApiInformasiShow',[informasiController::class,'ApiInformasiShow']);
    Route::get('/pegawaiShow/{id_pegawai}',[pegawaiController::class,'ApiPegawaiShow']); 
    Route::put('/ApiPegawaiEdit/{id_pegawai}',[pegawaiController::class,'ApiPegawaiEdit']);  
    Route::put('/ApiPegawaTambah',[pegawaiController::class,'ApiPegawaiTambah']);  
 
    Route::get('/logout', [AuthController::class, 'logout']);
});




  



Route::post('/login', [AuthController::class, 'login']);




