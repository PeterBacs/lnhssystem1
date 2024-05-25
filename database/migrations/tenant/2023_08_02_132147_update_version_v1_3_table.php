<?php

use App\Models\Setting;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        // version
        if(!$setting  = Setting::where('name', 'current_version')->first()) {
            $setting = new Setting();
        }

        $setting->name  = 'current_version';
        $setting->value = 'v1.3';
        $setting->save();
        // version
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
};
