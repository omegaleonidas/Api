<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class printController extends Controller
{
   

    public function index(){

        
        return view ('v_print');
    }
}
