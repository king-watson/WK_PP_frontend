<?php

namespace Database\Seeders;

use App\Models\Horror;
use Illuminate\Database\Seeder;

class HorrorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Horror::factory()->count(10)->create();
    }
}
