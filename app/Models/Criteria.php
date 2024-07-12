<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Criteria extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function alternatif_criterias()
    {
        return $this->hasMany(AlternatifCriteria::class);
    }

    public function sub_criterias()
    {
        return $this->hasMany(SubCriteria::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
