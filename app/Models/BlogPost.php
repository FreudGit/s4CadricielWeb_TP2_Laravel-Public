<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Etudiant;
use Illuminate\Support\Facades\DB;

class BlogPost extends Model
{
    use HasFactory;
    //protected primaryKey='id'; // si on veux changer primary key
    //protected table='blogposts'; // si on veux changer le nom de la table
    //protected timestamps=false; // si on veux pas de timestamps
    
    protected $fillable = ['title_fr', 'title_en' , 'body_fr', 'body_en', 'user_id'];

    public function blogHasUser()
    {
        return $this->hasOne('App\Models\User', 'id', 'user_id');
    }


    public function etudiant()
    {
        return $this->hasOne(Etudiant::class, 'user_id', 'user_id');
    }

    static public function blogPostSelect()
    {
        $lang = session()->get('locale', 'en');

        return self::select(
            '*',
            DB::raw("CASE WHEN title_$lang IS NULL THEN title_en ELSE title_$lang END as title"),
            DB::raw("CASE WHEN body_$lang IS NULL THEN body_en ELSE body_$lang END as body")
        )
            ->orderBy('title');
    }

    public function scopeWithDefaultLocale($query)
    {
        $lang = session()->get('locale', 'en');
        return $query->select(
            '*',
            DB::raw("CASE WHEN title_$lang IS NULL THEN title_en ELSE title_$lang END as title"),
            DB::raw("CASE WHEN body_$lang IS NULL THEN body_en ELSE body_$lang END as body")
        );
    }

    public function selectForUser()
    {
        return $this->blogPostSelect();
    }


}
