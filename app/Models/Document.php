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
       // $lang = session()->get('localeDB', 'en'); // 'en' as default language
        $lang = session()->get('locale');



        return self::select(
            '*',
            DB::raw("CASE WHEN title_$lang IS NULL THEN title_en ELSE title_$lang END as title")
        )
            ->orderBy('title')
            ->get();
    }

    /**
     * Get the user that owns the document.
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Determine if the given user can delete the document.
     *
     * @param  \App\Models\User  $user
     * @return bool
     */
    public function canBeDeletedBy(User $user)
    {
        return $this->user_id == $user->id;
    }

    /**
     * Determine if the given user can update the document.
     *
     * @param  \App\Models\User  $user
     * @return bool
     */
    public function canBeUpdatedBy(User $user)
    {
        return $this->user_id == $user->id;
    }
}