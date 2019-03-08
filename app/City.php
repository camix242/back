<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class City extends Authenticatable
{
    protected $table = "cities";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'city_name'
    ];

}
