
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Invoice Print</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{asset('template/')}}/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{asset('template/')}}/dist/css/adminlte.min.css">
</head>
<body>
<div class="wrapper">
  <!-- Main content -->
  <section class="invoice">
    <!-- title row -->

    Laporan Riwayat absensi
    <div class="row">
      <div class="col-12">
       
 

      </div>
      <!-- /.col -->
    </div>
    <!-- info row -->
    <div class="row invoice-info">
      <div class="col-sm-4 invoice-col">
       
        
      </div>
      <!-- /.col -->
      <div class="col-sm-4 invoice-col">
       
      </div>
      <!-- /.col -->
      <div class="col-sm-4 invoice-col">
        
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    <!-- Table row -->
    <div class="row">
      <div class="col-12 table-responsive">
        <table class="table table-striped">
        <thead>
    <tr>
    <th>no </th>
    <th>nama pegawai</th>
    <th>tanggal</th>
    <th>jam masuk</th>
    <th>jam pulang </th>
  
  
   <th>keterangan</th>
   <th>keterangan sore</th>
    </tr>
</thead>
      
<tbody>
<?php   $no=1;     

//  <td> <img src="{{url('foto_guru/'.$data->foto_guru)}}" width="150px" alt=""> </td> 
?>

        @foreach ($absensi as $data)
        <tr>
            <td>{{$no++}}</td>
            <td>{{$data -> nip}}</td>
            <td>{{$data -> tanggal}}</td>
            <td>{{$data -> jam_masuk}}</td>
            <td>{{$data -> jam_selesai}}</td>
            <td>{{$data -> keterangan}}</td>
            <td>{{$data -> keterangan_sore}}</td>
          
     
          
           
        
        
        </tr>

        @endforeach

</tbody>

        </table>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<!-- ./wrapper -->
<!-- Page specific script -->
<script>
  window.addEventListener("load", window.print());
</script>
</body>
</html>
