<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\SoftDeletes;

class Document extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'user_id',
        'title_en',
        'title_fr',
        'file_path',
        'file_type',
    ];


    static public function documentSelect()
    {
        $lang = session()->get('locale', 'en');
        return self::select(
            '*',
            DB::raw("CASE WHEN title_$lang IS NULL THEN title_en ELSE title_$lang END as title")
        )
            ->orderBy('title');
    }

    /**
     * Get the user that owns the document.
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function etudiant()
    {
        return $this->hasOne(Etudiant::class, 'user_id', 'user_id');
    }
    /**
     * Determine if the given user can update the document.
     *
     * @param  \App\Models\User  $user
     * @return bool
     */
    public function canBeUpdatedBy($id)
    {
        return $this->user_id == $id;
    }

    public function canBeDeletedBy(User $user)
    {
        return $this->user_id == $user->id;
    }
}