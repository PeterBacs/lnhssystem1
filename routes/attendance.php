<?php

use Illuminate\Support\Facades\Route;
use Stancl\Tenancy\Middleware\InitializeTenancyByDomain;
use App\Http\Controllers\Attendance\AttendanceController;
use Stancl\Tenancy\Middleware\PreventAccessFromCentralDomains;


Route::middleware(saasMiddleware())->group(function () {
    Route::group(['middleware' => ['XssSanitizer']], function () {
        Route::group(['middleware' => ['lang', 'CheckSubscription', 'FeatureCheck:attendance']], function () {
            Route::group(['middleware' => ['auth.routes', 'AdminPanel']], function () {
                Route::controller(AttendanceController::class)->prefix('attendance')->group(function () {
                    Route::get('/',                 'index')->name('attendance.index')->middleware('PermissionCheck:attendance_read');
                    Route::post('/store',           'store')->name('attendance.store')->middleware('PermissionCheck:attendance_create', 'DemoCheck');
                    Route::any('/search',           'searchStudents')->name('attendance.search');
                    Route::get('/report',           'report')->name('attendance.report')->middleware('PermissionCheck:attendance_read');
                    Route::any('/report-search',    'reportSearch')->name('attendance.report-search')->middleware('PermissionCheck:attendance_read');
                });
            });
        });
    });
});


