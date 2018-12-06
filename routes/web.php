<?php

use Illuminate\Support\Facades\Input;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('Chartjs','ChartjsController@index');
Route::get('EChart','EChartController@index');
Route::get('Test','TestController@index');

Route::any('/search',function(){
    $q = Input::get ( 'q' );
    $user = DB::table('Status_summery_by_owner')
      ->where('Name','LIKE','%'.$q.'%')
      ->orWhere('Opened','LIKE','%'.$q.'%')
      ->orWhere('Short_code','LIKE','%'.$q.'%')
      ->get();
    if(count($user) > 0)
        return view('search')->withDetails($user)->withQuery ( $q );
    else
        return view ('search')->withMessage('No Details found. Try to search again !');
});
