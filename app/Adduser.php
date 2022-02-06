<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Adduser extends Model
{
    protected $table='tbl_regusers';
    protected $fillable=['name','lname','email'];

    public $timestamps=true;
    
}
