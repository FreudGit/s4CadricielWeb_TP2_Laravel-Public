<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

class BlogPostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title_en'=> $this->faker->sentence,
            'body_en'=> $this->faker->paragraph(30),
            'title_fr' => $this->faker->sentence,
            'body_fr' => $this->faker->paragraph(30),
            'user_id'=> User::factory(),
        ];
    }
}
