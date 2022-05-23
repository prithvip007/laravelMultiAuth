<?php

namespace App\Http\Middleware;

use Closure;

class IsNurse
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(auth()->user()->is_nurse == 1){
            return $next($request);
        }
   
        return redirect(‘home’)->with(‘error’,"You don't have Nurse access.");
    }
}
