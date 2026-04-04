<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comedy extends Model
{
    use HasFactory;

    protected $fillable = [
        'movie_image',
        'movie_title',
        'movie_director',
        'movie_genre'
    ];
}
