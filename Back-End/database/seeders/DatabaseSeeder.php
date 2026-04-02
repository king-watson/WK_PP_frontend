<?php

namespace Database\Seeders;

use App\Models\Comedy;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // BookSeeder::class === Database\Seeders\BookSeeder
        $this->call([
            HorrorSeeder::class,
            ComedySeeder::class
        ]);
    }
}
