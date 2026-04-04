<?php

namespace App\Http\Controllers;

use App\Models\Comedy;
use Illuminate\Http\Request;

class ComedyController extends Controller
{
    /**
     * It will return me a list of comedy movies from the database
     *
     * @return array
     */
    public function index(Request $request)
    {
        $movieTitle = $request->get('movie_title', '');
        $movieDirector = $request->get('movie_director', '');

        $comedyQuery = Comedy::query();

        if (!empty($movieTitle)) {
            $comedyQuery->where('movie_title', 'LIKE', '%' . $movieTitle . '%');
        }

        if (!empty($movieDirector)) {
            $comedyQuery->where('movie_director', 'LIKE', '%' . $movieDirector . '%');
        }

        $comedies = $comedyQuery->get();

        return $comedies;
    }

    /**
     * It will show a specific comedy movie
     *
     * @param Comedy $comedy
     * @return Comedy
     */
    public function show(Comedy $comedy)
    {
        return $comedy;
    }

    public function store(Request $request)
    {
        $movieTitle = $request->input('movie_title');
        $movieDirector = $request->input('movie_director');
        $movieGenre = $request->input('movie_genre', 'Comedy');

        $comedy = Comedy::make([
            'movie_title' => $movieTitle,
            'movie_director' => $movieDirector,
            'movie_genre' => $movieGenre,
        ]);

        $comedy->save();

        return $comedy;
    }

    public function update(Request $request, Comedy $comedy) /**This function will help me to update the the movie information in the database */
    {
        if ($request->has('movie_title')) {
            $comedy->movie_title = $request->input('movie_title');
        }

        if ($request->has('movie_director')) {
            $comedy->movie_director = $request->input('movie_director');
        }

        if ($request->has('movie_genre')) {
            $comedy->movie_genre = $request->input('movie_genre');
        }

        $comedy->save();

        return $comedy;
    }

    public function destroy(Comedy $comedy)
    {
        $comedy->delete();
    }
}