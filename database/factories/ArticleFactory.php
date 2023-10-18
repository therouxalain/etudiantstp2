<?php

namespace Database\Factories;
use App\Models\Article;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Article>
 */
class ArticleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => $this->faker->realText($maxNbChars = 20, $indexSize = 2),
            'body'=> $this->faker->text(),
            'user_id'=>rand(1, 99),
            // Pour s'assurer que les créations aléatoires mettre des langues qui fonctionnent
            'language_id' => $this->faker->randomElement(['3', '4'])
        ];
    }
}
