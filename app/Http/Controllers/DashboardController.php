<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index() {
        $title = "hello";
        $data = [
            'hello', 'daskfas', 'asfk'
        ];


        return view('admin.dashboard', ['listpost'=>$data, 'title'=>$title]);
    }
}
