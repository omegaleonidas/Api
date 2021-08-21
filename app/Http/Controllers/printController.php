<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\models\absensimodel;
use Dompdf\Dompdf;

class printController extends Controller
{
   

    public function __construct(){
        $this-> absensiModel = new absensiModel();
        $this->middleware('auth');

    }

    public function index(){

        $data = [
            'absensi' => $this->absensiModel->detailDataShow(),
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
        return view ('print.v_detailPrint',$data);

    }

    public function printPDF($id_absensi){

        if( !$this->absensiModel->detailDataRiwayat($id_absensi)){
            abort(404);
        }

        $data = [
            'absensi' => $this->absensiModel->detailDataRiwayat($id_absensi),
        ];
        $html= view ('print.v_detailPrint',$data);

        $dompdf = new Dompdf();
        $dompdf->loadHtml($html);
        
        // (Optional) Setup the paper size and orientation
        $dompdf->setPaper('A4', 'landscape');
        
        // Render the HTML as PDF
        $dompdf->render();
        
        // Output the generated PDF to Browser
        $dompdf->stream();

    }
  
}
