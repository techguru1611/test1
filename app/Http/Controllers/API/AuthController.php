<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Mail;
use Session;
use Symfony\Component\HttpFoundation\Cookie;

class AuthController extends Controller
{
    /* verify link and send to login */
    public function verifyLink(Request $request)
    {
        /* Email decrypt */
        $email = Crypt::decrypt($request->email);

        /* Check expire date for expire link */
        $userData = User::whereEmail($email)->whereNotNull('expire_date')->where('expire_date','>',Carbon::now()->toDateTimeString())->first();
        // Auth::login($userData);
        // auth('api')->user();
        // Auth::guard('api')->login($userData);
        // dd($token);
        // dd(Auth::guard('api')->check());
        /* Check if non empty user */
        if (!empty($userData->expire_date)) {
            User::where('email',$userData->email)->update(['link_status' => 0]);
            $accessToken = $userData->createToken('authToken')->accessToken;
            // dd($accessToken);
            // Session::put('authToken',$accessToken);
            // $cookie = cookie('accessToken', $accessToken);
           // dd(Cookie::get('accessToken'));
            //$cookie = cookie('accessToken', $accessToken, 600);
            User::where('email',$userData->email)->update(['expire_date' => null]);
            return redirect('/home')->withCookie('accessToken', $accessToken)->withCookie('id',$userData->id);
        }else{

            /* Check is user is empty link status update to zero */
            User::whereEmail($email)->update(['link_status' => 0]);
            return redirect('/user/request');
        }
    }

    public function homeTest(Request $request)
    {
        return view('home');
    }

    public function verifyAuthtoken()
    {
        $id = $_COOKIE['id'];
        $userData = User::where('id',$id)->first();
        /* Check Auth user and link status is zero */
        if(!empty($userData) && $userData->link_status == 0){
            /* Redirect to home page */
            return response()->json(['status' => 1]);
        }
        else{
            return response()->json(['status' => 0]);
        }
    }

    public function logout()
    {
        $id = $_COOKIE['id'];
        $userData = User::where('id',$id)->first();
        /* If user link status 1 than user status updated to zero and logout */
        if(!empty($userData) && $userData->link_status == 1){
            User::where('id',$userData->id)->update(['link_status' => 0]);
            setcookie("accessToken","",time()-(60*60*24),"/");
            setcookie("id","",time()-(60*60*24),"/");
            return redirect('/user/request');
        } else{
            setcookie("accessToken","",time()-(60*60*24),"/");
            setcookie("id","",time()-(60*60*24),"/");
            return redirect('/user/request');
        }
    }

    public function sendUserLink(Request $request)
    {
        $userData = User::whereId($request->id)->first();

        if ($userData) {
            $currentTime = Carbon::now();
            $addExpiry = Carbon::now()->addSeconds(env('EXPIRY_TIME_SECONDS'));
            $newExpiry = $addExpiry->toDateTimeString();

            User::whereId($request->id)->update(['expire_date' => $newExpiry]);
            $encrptEmail = Crypt::encrypt($userData->email);

            $userUrl = url("/api/verify/link/{$encrptEmail}");
            $data = ['email' => $userData->email,
                    'userUrl' => $userUrl];

            Mail::send('admin.email',$data, function($message) use ($data) {
                $message->to($data['email'])
                ->from(env('MAIL_FROM_ADDRESS'))
                ->subject('Send userlink');
              });
        }
        return response()->json(['status' => 1]);
    }

    public function signout(Request $request)
    {
        $userData = User::where('id',$request->id)->first();
        User::where('email',$userData->email)->update(['link_status' => 1,'expire_date' => null]);
        return response()->json(['status' => 1]);
    }
}
