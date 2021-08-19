<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\models\absensimodel;

class printController extends Controller
{
   

    public function __construct(){
        $this-> absensiModel = new absensiModel();
        $this->middleware('auth');

    }

    public function index(){

        $data = [
            'absensi' => $this->absensiModel->alldata(),
        ];
        return view ('print.v_print',$data);
    }
    public function tampilKepegawaian(){
        return view ('print.v_print');
    }



 public function detailAbsensi($id_absensi){

        if( !$this->absensiModel->detailDataRiwayat($id_absensi)){
            abort(404);
        }

        $data = [
            'absensi' => $this->absensiModel->detailDataRiwayat($id_absensi),
        ];
        return view ('print.v_print',$data);

    }
  
}
