<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ComedyFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition() { /** Again not gonna lie, for creation of these movies names I used AI to generate them, as Marco told us that it's compeletly fine to do so */

        $comedyMovies = [
            'Home Alone' => 'Chris Columbus',
            'The Hangover' => 'Todd Phillips',
            'Superbad' => 'Greg Mottola',
            'Step Brothers' => 'Adam McKay',
            'Dumb and Dumber' => 'Peter Farrelly',
            'Mean Girls' => 'Mark Waters',
            '21 Jump Street' => 'Phil Lord & Christopher Miller',
            'The Mask' => 'Chuck Russell',
            'Bruce Almighty' => 'Tom Shadyac',
            'Rush Hour' => 'Brett Ratner',
        ];

        $movieTitle = $this->faker->unique()->randomElement(array_keys($comedyMovies));

        return [
            'movie_image' => '',
            'movie_title' => $movieTitle,
            'movie_director' => $comedyMovies[$movieTitle],
            'movie_genre' => 'Comedy',
        ];
    }
}
