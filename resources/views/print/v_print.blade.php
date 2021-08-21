

@extends('layout.v_template')

@section('content')
  
<table class="table table-boardered">

<thead>
    <tr>
    <th>no </th>
    <th>nip</th>
    <th>nama pegawai</th>
 
  
  
    <th>aksi</th>
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
            <td>{{$data -> nama_pegawai}}</td>
         
     
          
            <td>
            <a href="/report/detail/{{$data -> nip}}" class="btn btn-sm btn-success" > print </a>
            <a href="/report/detailPDF/{{$data -> nip}}" class="btn btn-sm btn-success" > PDF </a>
            
            </td>
        
        
        </tr>

        @endforeach

</tbody>

</table >

@endsection