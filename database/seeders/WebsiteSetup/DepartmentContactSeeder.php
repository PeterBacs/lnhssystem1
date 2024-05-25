<?php

namespace Database\Seeders\WebsiteSetup;

use App\Models\Upload;
use App\Models\WebsiteSetup\DepartmentContact;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DepartmentContactSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $images = [
            'frontend/img/contact/admission_1.webp',
            'frontend/img/contact/admission_2.webp',
            'frontend/img/contact/admission_3.webp',
            'frontend/img/contact/admission_4.webp',
        ];

        $uploads = [];
        foreach ($images as $key => $value) {
            $row = new Upload();
            $row->path = $value;
            $row->save();

            $uploads[] = $row->id;
        }

        $info = [
            [
                'image' => $uploads[0],
                'name' => 'Admission',
                'phone' => '+883459783849',
                'email' => 'admission@mail.Com',
            ],
            [
                'image' => $uploads[1],
                'name' => 'Examination',
                'phone' => '+883459783849',
                'email' => 'examination@mail.Com',
            ],
            [
                'image' => $uploads[2],
                'name' => 'Library',
                'phone' => '+883459783849',
                'email' => 'library@mail.Com',
            ],
            [
                'image' => $uploads[3],
                'name' => 'media',
                'phone' => '+883459783849',
                'email' => 'media@mail.Com',
            ],
        ];

        foreach ($info as $key => $value) {
            $row = new DepartmentContact();
            $row->upload_id = $value['image'];
            $row->name = $value['name'];
            $row->phone = $value['phone'];
            $row->email = $value['email'];
            $row->save();
        }
    }
}
