<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'userGroup' => ['required', 'string'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        $is_admin = 0;
        $is_doctor = 0;
        $is_nurse = 0;
        if($data['userGroup'] == 'admin'){
            $is_admin = 1;
        }elseif ($data['userGroup'] == 'doctor') {
            $is_doctor = 1;
        }elseif ($data['userGroup'] == 'nurse') {
            $is_nurse = 1;
        }
        // echo "<pre>";print_r($is_nurse);echo "</pre>";die;
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'is_admin' => $is_admin,
            'is_doctor' => $is_doctor,
            'is_nurse' => $is_nurse,
            'password' => Hash::make($data['password']),
        ]);
    }
}
