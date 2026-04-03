<?php

namespace Database\Seeders;

use App\Models\Comedy;
use Illuminate\Database\Seeder;

class ComedySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Comedy::factory()->count(10)->create();
    }
}
