<?php

namespace App\Http\Controllers\Api\Student;

use App\Traits\ReturnFormatTrait;
use App\Models\StudentInfo\Student;
use App\Http\Controllers\Controller;
use App\Http\Resources\Student\StudentInfoResource;

class StudentInfoAPIController extends Controller
{
    use ReturnFormatTrait;
    
    public function __invoke()
    {
        try {

            $student = Student::where('id', @auth()->user()->student->id)->get();
            $studentInfo = StudentInfoResource::collection($student);

            return $this->responseWithSuccess(___('alert.success'), $studentInfo[0]);

        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong'), $th->getMessage());
        }
    }
}
