<?php

namespace Database\Factories;
use App\Models\Ville;
use App\Models\User;


use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Etudiant>
 */
class EtudiantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        // Récupérer ramdom un ID de ville existant depuis la table "villes"
        $villeIds = Ville::pluck('id')->toArray();
        $randomVilleId = $this->faker->randomElement($villeIds);

        // Récupérer tous les IDs utilisateur qui ne sont pas encore associés à un étudiant
        $userIdsWithoutEtudiant = User::whereNotExists(function ($query) {
            $query->select('*')->from('etudiants')
                ->whereColumn('etudiants.user_id', 'users.id');
        })->pluck('id')->toArray();
        $randomUserId = $this->faker->randomElement($userIdsWithoutEtudiant);

        return [
            'nom' => $this->faker->firstName . ' ' . $this->faker->lastName,
            'adresse' => $this->faker->address,
            'phone' => $this->faker->phoneNumber,
            'email' => $this->faker->unique()->safeEmail,
            'date_de_naissance' => $this->faker->date($format = 'Y-m-d', $max = '2003-12-31'),
            'ville_id' => $randomVilleId,
            'user_id' => $randomUserId,
        ];
    }
}
