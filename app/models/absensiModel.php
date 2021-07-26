<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class absensiModel extends Model
{


  protected $table = "t_absensi";
  protected $primaryKey = 'id_absensi';
  protected $fillable = [
      'absen'
  ];


    public function allData(){
      return  DB::table('t_absensi')->get();
    }
    
    public function detailData($id_absensi){
        return  DB::table('t_absensi')->where('id_absensi', $id_absensi)->first();

    }
    public function editData($id_absensi,$data){
      return  DB::table('t_absensi')  ->where('id_absensi',$id_absensi) ->update($data);
  }

  public function deleteData($id_absensi){
      return  DB::table('t_absensi')  ->where('id_absensi',$id_absensi) ->delete();
  }

  public function detailDataRiwayat($id_absensi){
    return  DB::table('t_absensi') ->where('id_pegawai', $id_absensi) ->get() ;
}


}
