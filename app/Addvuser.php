<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Addvuser extends Model
{
    protected $table='tbl_vusers';
    protected $fillable=['name','email','password'];

    public $timestamps=true;
    
}
