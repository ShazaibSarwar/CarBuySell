<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class orderproduct extends Model
{
    use HasFactory;
    protected $table="orderproduct";
    protected $fillable=array('userid','proid','rentproductid', 'quantity', 'price', 'status');
}
