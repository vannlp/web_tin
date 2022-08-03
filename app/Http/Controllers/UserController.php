<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function create() {
        return view('admin.user.create');
    }

    public function store(Request $request) {
        $request->validate([
            'name' => 'required|min:5|max:255',
            'email' => 'required|min:5|email|unique:users',
            'username' => 'required|min:5|unique:users',
            'password' => 'required|min:5|confirmed'
        ],[
            'name.required' => 'Họ và tên không được bỏ trống',
            'name.min' => 'Họ và tên không được ít hơn 5 ký tự',
            'name.max' => 'Họ và tên tối đa 255 ký tự',
            'email.email' => 'Email không đúng định dạng',
            'email.unique' => 'Email đã tồn tại',
            'username.unique'=> 'Tên đăng nhập đã tồn tại',
            'password.confirmed' => 'Nhập lại mật khẩu không đúng'
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'username' => $request->username,
            'role' => $request->role
        ]);

        return redirect()->back()->with('status' ,'Thêm người dùng thành công');
    }

}
