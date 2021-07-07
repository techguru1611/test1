<?php

namespace App\Http\Controllers;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DataTables;
use Illuminate\Support\Facades\Crypt;
use Mail;

class UserController extends Controller
{
    public function checkEmail(Request $request)
    {
        $checkEmailExists = User::whereEmail($request->email)->count();
        if ($checkEmailExists == 0) {
            return Redirect::back()->with('error', 'This email does not exists or wrong email');
        } else {
            User::whereEmail($request->email)->update(['link_status' => 1]);
            return redirect()->back()->with('success', 'your request received successfully');
        }
    }

    public function userList(Request $request)
    {
        if ($request->ajax()) {
            $data = User::all();
            return datatables()::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {
                    $btn = '<button onclick="sendLink(' . $row->id . ')" class="edit btn btn-primary btn-sm">Send Link</button><button onclick="signout(' . $row->id . ')" class="edit btn btn-danger btn-sm" style="margin-left:10px;">Logout</button>';
                    return $btn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.users_list');
    }
}
