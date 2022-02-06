<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CommentModal extends Model
{
    protected $table='tbl_comment';
    protected $fillable=['title','cname','comment'];

    public $timestamps=false;
}
