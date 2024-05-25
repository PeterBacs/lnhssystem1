<?php

namespace Database\Seeders;

use App\Models\Setting;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Crypt;
use App\Traits\CommonHelperTrait;
use Illuminate\Support\Facades\Session;

class SettingSeeder extends Seeder
{
    use CommonHelperTrait;
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Setting::create([
            'name' => 'application_name',
            'value' => 'Onest Schooled - School Management System',
        ]);
        Setting::create([
            'name' => 'address',
            'value' => 'Resemont Tower, House 148, Road 13/B, Block E Banani Dhaka 1213.',
        ]);
        Setting::create([
            'name' => 'phone',
            'value' => '+62 8787 8787',
        ]);
        Setting::create([
            'name' => 'email',
            'value' => 'onestschooled@gmail.com',
        ]);
        Setting::create([
            'name' => 'school_about',
            'value' => 'Lorem ipsum dolor sit amet consectetur. Morbi cras sodales elementum sed. Suspendisse adipiscing arcu magna leo sodales pellentesque. Ac iaculis mattis ornare rhoncus nibh mollis arcu.',
        ]);
        Setting::create([
            'name' => 'footer_text',
            'value' => '© 2023 Onest Schooled . All rights reserved.',
        ]);
        Setting::create([
            'name' => 'file_system',
            'value' => 'local',
        ]);
        Setting::create([
            'name' => 'aws_access_key_id',
            'value' => '',
        ]);
        Setting::create([
            'name' => 'aws_secret_key',
            'value' => '',
        ]);
        Setting::create([
            'name' => 'aws_region',
            'value' => '',
        ]);
        Setting::create([
            'name' => 'aws_bucket',
            'value' => '',
        ]);
        Setting::create([
            'name' => 'aws_endpoint',
            'value' => '',
        ]);


        // twillio sms


        Setting::create([
            'name' => 'twilio_account_sid',
            'value' => '',
        ]);
        Setting::create([
            'name' => 'twilio_auth_token',
            'value' => '',
        ]);
        Setting::create([
            'name' => 'twilio_phone_number',
            'value' => '',
        ]);
        

        // recaptcha
        Setting::create([
            'name' => 'recaptcha_sitekey',
            'value' => '',
        ]);
        Setting::create([
            'name' => 'recaptcha_secret',
            'value' => '',
        ]);
        Setting::create([
            'name' => 'recaptcha_status',
            'value' => '0',
        ]);



        Setting::create([
            'name' => 'mail_drive',
            'value' => 'smtp',
        ]);
        Setting::create([
            'name' => 'mail_host',
            'value' => 'smtp.gmail.com',
        ]);
        Setting::create([
            'name' => 'mail_address',
            'value' => '',
        ]);
        Setting::create([
            'name' => 'from_name',
            'value' => 'Onest Schooled - School Management System',
        ]);
        Setting::create([
            'name' => 'mail_username',
            'value' => '',
        ]);

        // pass
        $mail_password = Crypt::encrypt('');
        Setting::create([
            'name' => 'mail_password',
            'value' => $mail_password,
        ]);


        Setting::create([
            'name' => 'mail_port',
            'value' => '587',
        ]);
        Setting::create([
            'name' => 'encryption',
            'value' => 'tls',
        ]);
        Setting::create([
            'name' => 'default_langauge',
            'value' => 'en',
        ]);
        Setting::create([
            'name' => 'light_logo',
            'value' => 'backend/uploads/settings/light.png',
        ]);
        Setting::create([
            'name' => 'dark_logo',
            'value' => 'backend/uploads/settings/dark.png',
        ]);
        Setting::create([
            'name' => 'favicon',
            'value' => 'backend/uploads/settings/favicon.png',
        ]);
        Setting::create([
            'name' => 'session',
            'value' => 1,
        ]);
        Setting::create([
            'name' => 'currency_code',
            'value' => 'USD',
        ]);
        // Setting::create([
        //     'name' => 'student_limit',
        //     'value' => Session::get('student_limit'),
        // ]);
        // Setting::create([
        //     'name' => 'staff_limit',
        //     'value' => Session::get('staff_limit'),
        // ]);
        // Setting::create([
        //     'name' => 'expiry_date',
        //     'value' => Session::get('expiry_date'),
        // ]);
        // Setting::create([
        //     'name' => 'features',
        //     'value' => Session::get('features'),
        // ]);
    }
}
