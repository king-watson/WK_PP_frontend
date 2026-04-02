<?php

namespace App\Http\Controllers;

use App\Models\Horror;
use Illuminate\Http\Request;

class HorrorController extends Controller
{
    /**
     * Return a list of books
     *
     * @return array
     */
    public function index(Request $request)
    {
        $movieTitle = $request->get('movie_title', '');
        $movieDirector = $request->get('movie_director', '');

        $horrorQuery = Horror::query();

        if (!empty($movieTitle)) {
            $horrorQuery->where('movie_title', 'LIKE', '%' . $movieTitle . '%');
        }

        if (!empty($movieDirector)) {
            $horrorQuery->where('movie_director', 'LIKE', '%' . $movieDirector . '%');
        }

        $horrors = $horrorQuery->get();

        return $horrors;
    }

    /**
     * Show a specific horror movie
     *
     * @param Horror $horror
     * @return Horror
     */
    public function show(Horror $horror)
    {
        return $horror;
    }

    public function store(Request $request)
    {
        $movieTitle = $request->input('movie_title');
        $movieDirector = $request->input('movie_director');
        $movieGenre = $request->input('movie_genre', 'Horror');

        $horror = Horror::make([
            'movie_title' => $movieTitle,
            'movie_director' => $movieDirector,
            'movie_genre' => $movieGenre,
        ]);

        $horror->save();

        return $horror;
    }

    public function update(Request $request, Horror $horror)
    {
        if ($request->has('movie_title')) {
            $horror->movie_title = $request->input('movie_title');
        }

        if ($request->has('movie_director')) {
            $horror->movie_director = $request->input('movie_director');
        }

        if ($request->has('movie_genre')) {
            $horror->movie_genre = $request->input('movie_genre');
        }

        $horror->save();

        return $horror;
    }

    public function destroy(Horror $horror)
    {
        $horror->delete();
    }
}