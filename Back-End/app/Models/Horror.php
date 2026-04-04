<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Horror extends Model
{
    use HasFactory;

    //These fillablse will help in protecting empty tables and columns
    protected $fillable = [
        'movie_image',
        'movie_title',
        'movie_director',
        'movie_genre'
    ];
}