<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BlogPost extends Model
{
    
    use HasFactory;

    //protected primaryKey='id'; // si on veux changer primary key
    //protected table='blogposts'; // si on veux changer le nom de la table
    //protected timestamps=false; // si on veux pas de timestamps
    
    protected $fillable = ['title', 'body', 'user_id'];

    public function blogHasUser()
    {
        return $this->hasOne('App\Models\User', 'id', 'user_id');

    }

  

}
