<?php

use Illuminate\Support\Facades\Route;
Route::post("/savevuser", "FormValidate@savedata");

 Route::get('hulcontent', "Addusers@register");
 Route::get('contantday', "Addusers@register2");

Route::post("/saveuser", "Addusers@saveusers");
Route::post("/save-comment", "Addusers@savecomments");
Route::get("/register-users", "Addusers@getusers");
Route::get("/download", "Addusers@getDownload");

// Validate
 Route::get('/', "FormValidate@index");
 Route::get('user-data', "FormValidate@show");

         