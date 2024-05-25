<?php

namespace App\Http\Controllers\Api\Student;

use App\Traits\ReturnFormatTrait;
use App\Http\Controllers\Controller;
use App\Services\AttendanceService;

class AttendanceAPIController extends Controller
{
    use ReturnFormatTrait;

    
    public function index()
    {
        try {
           
            $data = (new AttendanceService)->monthlyAttendance();

            return $this->responseWithSuccess(___('alert.success'), $data);

        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong'), $th->getMessage());
        }
    }

    
    public function attendanceProgress()
    {
        try {
           
            $data = (new AttendanceService)->attendanceProgress();

            return $this->responseWithSuccess(___('alert.success'), $data);

        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong'), $th->getMessage());
        }
    }

    
    public function yearlyPresentPercentage()
    {
        try {
           
            $data = (new AttendanceService)->yearlyPresentPercentage();

            return $this->responseWithSuccess(___('alert.success'), $data);

        } catch (\Throwable $th) {
            return $this->responseWithError(___('alert.something_went_wrong'), $th->getMessage());
        }
    }
}
