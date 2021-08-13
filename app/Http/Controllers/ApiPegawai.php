<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\guru;

class ApiPegawai extends Controller
{
    public function create(Request $request){



    //jika falidasi tidak ada maka simpan data
    //upload foto 


    
     $pegawai = new guru();
        
     $pegawai->nip = $request->input('nip');
     $pegawai->nama_pegawai = $request->input('nama_pegawai');
     $pegawai->jabatan_id = $request->input('jabatan_id');
     $pegawai->email = $request->input('email');
     $pegawai->no_tlp = $request->input('no_tlp');
     $pegawai->alamat = $request->input('alamat');
     $pegawai->tgl_masuk = $request->input('tgl_masuk');
     $pegawai->tmp_lahir = $request->input('tmp_lahir');
     $pegawai->id_agama = $request->input('id_agama');
     $pegawai->gender = $request->input('gender');
     $pegawai->pendidikan = $request->input('pendidikan');
     $filename = $request->input('foto');
    //  $path= $request->file('foto')->move(public_path("/"),$filename);
    //  $photoURL = url('/'.$filename);
    //  $pegawai ->foto = $path;
     

        $pegawai->save();
        if ($pegawai) {
            
            return response()->json([
                'success' => true,
                'message' => 'pegawai tambah!',
                'data' => $pegawai
            ], 201);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'pegawai tidak di ditampilkan',
            ], 400);
        }

    }

    public function show(){

        $pegawai = guru::all();
        return response()->json($pegawai);
    }

    public function showById($id_pegawai)
    {
        $pegawai = guru::find($id_pegawai);
        return response()->json($pegawai);
    }

    public function updateById(Request $request, $id_pegawai){
  

        $pegawai = new guru();
        $pegawai->nip = $request->input('nip');
        $pegawai->nama_pegawai = $request->input('nama_pegawai');
        $pegawai->jabatan_id = $request->input('jabatan_id');
        $pegawai->email = $request->input('email');
        $pegawai->no_tlp = $request->input('no_tlp');
        $pegawai->alamat = $request->input('alamat');
        $pegawai->tgl_masuk = $request->input('tgl_masuk');
        $pegawai->tmp_lahir = $request->input('tmp_lahir');
        $pegawai->id_agama = $request->input('id_agama');
        $pegawai->gender = $request->input('gender');
        $pegawai->pendidikan = $request->input('pendidikan');
       
        $pegawai-> save();
        if ($pegawai) {
            
            return response()->json([
                'success' => true,
                'message' => 'informasi riwayat!',
                'data' => $pegawai
            ], 201);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'informasi tidak ditampilkan',
            ], 400);
        }

    }

    public function deleteById(Request $request, $id){

        $pegawai = guru::find($id);
        $pegawai->delete();
        return response()->json($pegawai);  
    }

}
