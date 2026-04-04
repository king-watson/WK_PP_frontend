<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class HorrorFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition() { /** Again not gonna lie, for creation of these movies names I used AI to generate them, as Marco told us that it's compeletly fine to do so */

        $horrorMovies = [
            'The Conjuring' => 'James Wan',
            'Insidious' => 'James Wan',
            'Hereditary' => 'Ari Aster',
            'The Exorcist' => 'William Friedkin',
            'Get Out' => 'Jordan Peele',
            'A Quiet Place' => 'John Krasinski',
            'The Nun' => 'Corin Hardy',
            'IT' => 'Andy Muschietti',
            'Sinister' => 'Scott Derrickson',
            'The Babadook' => 'Jennifer Kent',
        ];

        $movieTitle = $this->faker->unique()->randomElement(array_keys($horrorMovies));

        return [
            'movie_image' => '',
            'movie_title' => $movieTitle,
            'movie_director' => $horrorMovies[$movieTitle],
            'movie_genre' => 'Horror',
        ];
    }
}
