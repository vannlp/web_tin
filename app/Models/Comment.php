<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    protected $fillable = [
        'content', 'user_id', 'level', 'post_id', 'parent_id'
    ];

    public function post() {
        return $this->belongsTo(Post::class);
    }

    public function user() {
        return $this->belongsTo(User::class);
    }

    public function parent()
    {
        return $this->belongsTo(Comment::class,'parent_id')->where('parent_id',0);
    }

    public function children()
    {
        return $this->hasMany(Comment::class, 'parent_id');
    }
}
