<?php

namespace App\Http\Controllers\controllersUser;


use Illuminate\Http\Request;
use App\models\absensimodel;
use App\Http\Controllers\Controller;
use Dompdf\Dompdf;
use Illuminate\Support\Facades\DB;

class printController1 extends Controller
{
   

    public function __construct(){
        $this-> absensiModel = new absensiModel();
        $this->middleware('auth');

    }

    public function index(){

        $data = [
            'absensi' => $this->absensiModel->detailDataShow(),
        ];
        return view ('printUser.v_print',$data);
    }




    public function tampilKepegawaian(){
        return view ('printUser.v_print');
    }



 public function detailAbsensi($id_absensi){

        if( !$this->absensiModel->detailDataRiwayat($id_absensi)){
            abort(404);
        }


        $data = [
            'absensi' => $this->absensiModel->detailDataRiwayat($id_absensi),
            'absensi1' => $this->absensiModel->detailDataRiwayat1($id_absensi)
        ];

        

        return view ('printUser.v_detailPrint',$data);

    }
    public function detailAbsensi1($id_absensi){

        if( !$this->absensiModel->detailDataRiwayat($id_absensi)){
            abort(404);
        }


        $data = [
            'absensi' => $this->absensiModel->detailDataRiwayat($id_absensi),
            'absensi1' => $this->absensiModel->detailDataRiwayat1($id_absensi),
            'absensi2' => $this->absensiModel->detailDataShow()
        ];

        

        return view ('printUser.v_detailprint1',$data);

    }
    public function printHasil($id_absensi){

        if( !$this->absensiModel->detailDataRiwayat($id_absensi)){
            abort(404);
        }


        $data = [
            'absensi' => $this->absensiModel->detailDataRiwayat($id_absensi),
            'absensi1' => $this->absensiModel->detailDataRiwayat1($id_absensi),
            'absensi2' => $this->absensiModel->detailDataShow()
        ];

        

        return view ('printUser.printHasil',$data);

    }


    public function printPDF($id_absensi){

        if( !$this->absensiModel->detailDataRiwayat($id_absensi)){
            abort(404);
        }

        $data = [
            'absensi' => $this->absensiModel->detailDataRiwayat($id_absensi),
            'absensi1' => $this->absensiModel->detailDataRiwayat1($id_absensi),
            'absensi2' => $this->absensiModel->detailDataShow()
        ];
        $html= view ('printUser.printHasil',$data);

        $dompdf = new Dompdf();
        $dompdf->loadHtml($html);
        
        // (Optional) Setup the paper size and orientation
        $dompdf->setPaper('A4', 'landscape');
        
        // Render the HTML as PDF
        $dompdf->render();
        
        // Output the generated PDF to Browser
        $dompdf->stream();

    }

    public function Tanggal(Request $request,$id_absensi)
    {

        $var = $request->tglAwal;
      
        $var1 = $request->tglAkhir;
       


        $data1 = [
            
           'absensi1' => $this->absensiModel->detailDataRiwayat1($id_absensi),
            'absensi' =>DB::table('t_absensi')
        
            ->whereBetween('tanggal', [$var,$var1])
            ->where('nip',$id_absensi)
            ->get()
        ];
    
            return view ('printUser.printHasil',$data1);

        //    if ($data1) {
        
        //     return response()->json([
        //         'success' => true,
        //         'message' => 'data Berhasil ditampilkan !',
        //         'data' => $data1
        //     ], 201);
        // } else {
        //     return response()->json([
        //         'success' => false,
        //         'message' => 'data tidak ditampilkan',
        //     ], 400);
        //    echo("error");
        // }
    

    }
  
}
