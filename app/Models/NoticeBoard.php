<?php

namespace App\Models;

use App\Models\Upload;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class NoticeBoard extends Model
{
    use HasFactory;

    protected $casts = [
        'visible_to' => 'array',
    ];

    public function attachmentFile()
    {
        return $this->belongsTo(Upload::class, 'attachment', 'id');
    }

}
