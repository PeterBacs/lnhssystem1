<?php

use Carbon\Carbon;
use App\Models\Upload;
use App\Models\Setting;
use App\Models\Currency;
use App\Models\Language;
use Illuminate\Support\Str;
use App\Models\Subscription;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Models\Examination\MarksGrade;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Modules\MainApp\Enums\PackagePaymentType;
use App\Models\Academic\SubjectAssignChildren;
use App\Models\Examination\ExaminationSettings;
use App\Models\StudentInfo\SessionClassStudent;
use Stancl\Tenancy\Middleware\InitializeTenancyByDomain;
use Stancl\Tenancy\Middleware\PreventAccessFromCentralDomains;

function getPagination($ITEM){
    return view('common.pagination', compact('ITEM'));
}


function setting($name)
{
    if ($name == 'currency_symbol') {
        $currencyCode = Setting::where('name', 'currency_code')->first()?->value;
        return Currency::where('code', $currencyCode)->first()?->symbol;
    }

    $setting_data = Setting::where('name', $name)->first();
    if ($setting_data) {
        return $setting_data->value;
    }

    return null;
}

function examSetting($name)
{
    $setting_data = ExaminationSettings::where('name', $name)->where('session_id', setting('session'))->first();
    if ($setting_data) {
        return $setting_data->value;
    }

    return null;
}



function findDirectionOfLang(){
    $data = Language::where('code', Session::get('locale'))->select('direction')->first();
    return @$data->direction != null ? strtolower(@$data->direction) : '';
}

// for menu active
if (!function_exists('set_menu')) {
    function set_menu(array $path, $active = 'mm-active')
    {
        foreach ($path as $route) {
            if (Route::currentRouteName() == $route) {
                return $active;
            }
        }
        return (request()->is($path)) ? $active : '';
        // return call_user_func_array('Request::is', (array) $path) ? $active : '';
    }
}

// for  submenu list item active
if (!function_exists('menu_active_by_route')) {
    function menu_active_by_route($route)
    {
        return request()->routeIs($route) ? 'mm-show' : 'in-active';
    }
}


// get upload path
if (!function_exists('uploadPath')) {
    function uploadPath($id)
    {
        $row = Upload::find($id);
        return $row->path;
    }
}


function ___($key = null, $replace = [], $locale = null)
{
    $input       = explode('.', $key);
    $file        = $input[0];
    $term        = $input[1];
    $app_local   = Session::get('locale');

    try { 

        if($app_local == "")
        {
            $app_local = 'en';
        }

        $jsonString  = file_get_contents(base_path('lang/' . $app_local . '/' . $file . '.json'));

        $data        = json_decode($jsonString, true);
    
    
        if (@$data[$term]) {
            return $data[$term];
        }

        return $term;

    } catch(\Exception $e) {
        return $term;

    }


    
}

// global thumbnails
if (!function_exists('globalAsset')) {
    function globalAsset($path,$default_image=null)
    {
        
        if ($path == "") {
            return url("backend/uploads/default-images/$default_image");
        } else {
            try{

                if (setting('file_system') == "s3" && Storage::disk('s3')->exists($path) && $path != "") {
                    return Storage::disk('s3')->url($path);
                } else if (setting('file_system') == "local" && file_exists(@$path)) {
                    return url($path);
                } else {
                    if ($default_image==null) {
                        return url('backend/uploads/default-images/user2.jpg');
                    } else {
                        return url("backend/uploads/default-images/$default_image");
                    }
                }

            } catch (\Exception $c){
                return url("backend/uploads/default-images/$default_image");
            }
            
        }
    }
}


// Permission check
if (!function_exists('hasPermission')) {
    function hasPermission($keyword)
    {
        if (in_array($keyword, Auth::user()->permissions ?? [])) {
            return true;
        }
        return false;
    }
}


// Date format
if (!function_exists('dateFormat')) {
    function dateFormat($keyword)
    {
        return date('d M Y', strtotime($keyword));
    }
}
if (!function_exists('timeFormat')) {
    function timeFormat($keyword)
    {
        return date('g:i A', strtotime($keyword));
    }
}
// Mark grade
if (!function_exists('markGrade')) {
    function markGrade($data)
    {
        $result = MarksGrade::where('session_id', setting('session'))->where('percent_upto', '>=', $data)->where('percent_from', '<=', $data)->first();
        if ($result){
            return $result->name;
        }
        return '...';
    }
}

if (!function_exists('userTheme')) {
    function userTheme()
    {
        $session_theme=Session::get('user_theme');

        if (isset($session_theme)) {
            return $session_theme;
        } else {
            return 'default-theme';
        }
    }
}

if (!function_exists('leadingZero')) {
    function withLeadingZero($number)
    {

        // $strNumber = $number;
        // if(strlen($strNumber) < 10){
        //     return $strNumber;
        // }

        return $number;
    }
}


if (!function_exists('setEnvironmentValue')) {
    function setEnvironmentValue($envKey, $envValue)
    {
        $envFile = app()->environmentFilePath();
        $str = file_get_contents($envFile);

        $str .= "\n"; // In case the searched variable is in the last line without \n
        $keyPosition = strpos($str, "{$envKey}=");
        $endOfLinePosition = strpos($str, PHP_EOL, $keyPosition);
        $oldLine = substr($str, $keyPosition, $endOfLinePosition - $keyPosition);
        $str = str_replace($oldLine, "{$envKey}={$envValue}", $str);
        $str = substr($str, 0, -1);

        $fp = fopen($envFile, 'w');
        fwrite($fp, $str);
        fclose($fp);
    }
}

if(!function_exists('s3Upload')){
    function s3Upload($directory, $file){
        $directory = 'public/'.$directory;
        return Storage::disk('s3')->put($directory, $file, 'public');
    }
}

if(!function_exists('s3ObjectCheck')){
    function s3ObjectCheck($path){
        return Storage::disk('s3')->exists($path);
    }
}


if (! function_exists('include_route_files')) {
    /**
     * Loops through a folder and requires all PHP files
     * Searches sub-directories as well.
     *
     * @param $folder
     */
    function include_route_files($folder)
    {
        try {
            $rdi = new RecursiveDirectoryIterator($folder);
            $it = new RecursiveIteratorIterator($rdi);

            while ($it->valid()) {
                if (! $it->isDot() && $it->isFile() && $it->isReadable() && $it->current()->getExtension() === 'php') {
                    require $it->key();
                }

                $it->next();
            }
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    function getAllDaysInMonth($year, $month)
    {
        $daysInMonth = Carbon::create($year, $month)->daysInMonth;
        $days = [];

        for ($day = 1; $day <= $daysInMonth; $day++) {
            $date = Carbon::create($year, $month, $day);
            $days[] = $date->format('Y-m-d');
        }

        return $days;
    }


    function getSubdomainName()
    {
        $parsedUrl = parse_url(url()->full());
        $hostParts = explode('.', $parsedUrl['host']);
        return $hostParts;
    }
}

if(!function_exists('saasMiddleware'))
{
    function saasMiddleware()
    {
        
        if(env('APP_SAAS')) {
           return [
                'web',
                InitializeTenancyByDomain::class,
                PreventAccessFromCentralDomains::class,
            ];
        } 

        return [
            'web'
        ];
        
    }
}



function activeSubscriptionStudentLimit()
{
    if(env('APP_SAAS')) {
        return cache()->rememberForever('activeSubscriptionStudentLimit', function () {
            $subscription = Subscription::active()->first();

            if ($subscription) {
                return $subscription->payment_type == PackagePaymentType::PREPAID ? $subscription->student_limit : 99999999;
            }

            return null;
        });
    }

    return null;
}

function activeSubscriptionStaffLimit()
{
    if(env('APP_SAAS')) {
        return cache()->rememberForever('activeSubscriptionStaffLimit', function () {
            $subscription = Subscription::active()->first();

            if ($subscription) {
                return $subscription->payment_type == PackagePaymentType::PREPAID ? $subscription->staff_limit : 99999999;
            }

            return null;
        });
    }

    return null;
}

function activeSubscriptionExpiryDate()
{
    if(env('APP_SAAS')) {
        return cache()->rememberForever('activeSubscriptionExpiryDate', function () {
            $subscription = Subscription::active()->first();
            if($subscription) {
                if($subscription->expiry_date) { // expiry gate null menas this is lifetime package
                    if(date('Y-m-d') <= date('Y-m-d', strtotime($subscription->expiry_date))) {
                        return true;
                    }
                    return false;
                } 
                return true;
            } 
            return false;
        }); 
    }
    return true;
}

function activeSubscriptionFeatures()
{
    if(env('APP_SAAS')) {
        return cache()->rememberForever('activeSubscriptionFeatures', function () {
            return Subscription::active()->first()?->features;
        });
    }

    return null;
}


// Feature check
if (!function_exists('hasFeature')) {
    function hasFeature($keyword)
    {
        if (!env('APP_SAAS')) {
            return true;
        }
        // if (in_array($keyword, Setting('features') ?? [])) {
        if (in_array($keyword, activeSubscriptionFeatures() ?? [])) {
            return true;
        }
        return false;
    }
}


function sessionClassStudent()
{
    $sesionClassStudent = SessionClassStudent::query()
                        ->where('student_id', request()->filled('student_id') ? request('student_id') : @auth()->user()->student->id)
                        ->whereHas('session', function ($q) {
                            $q->whereYear('start_date', '<=', date('Y'))
                            ->whereYear('end_date', '>=', date('Y'));
                        })
                        ->first();

    return @$sesionClassStudent;
}


function getDayNum($date)
{
    $day = Str::lower(Carbon::createFromFormat('Y-m-d', $date)->format('l'));

    switch ($day) {
        case $day == 'saturday':
            return 1;
            break;
        case $day == 'sunday':
            return 2;
            break;
        case $day == 'monday':
            return 3;
            break;
        case $day == 'tuesday':
            return 4;
            break;
        case $day == 'wednesday':
            return 5;
            break;
        case $day == 'thursday':
            return 6;
            break;
        default:
            return 7;
    }
}


function loadPayPalCredentials()
{
    if (Str::lower(Setting('paypal_payment_mode')) == 'sandbox') {
        \Config::set('paypal.sandbox.username', Setting('paypal_sandbox_api_username'));
        \Config::set('paypal.sandbox.password', Setting('paypal_sandbox_api_password'));
        \Config::set('paypal.sandbox.secret', Setting('paypal_sandbox_api_secret'));
        \Config::set('paypal.sandbox.certificate', Setting('paypal_sandbox_api_certificate'));
    } elseif(Str::lower(Setting('paypal_payment_mode')) == 'live') {
        \Config::set('paypal.live.username', Setting('paypal_live_api_username'));
        \Config::set('paypal.live.password', Setting('paypal_live_api_password'));
        \Config::set('paypal.live.secret', Setting('paypal_live_api_secret'));
        \Config::set('paypal.live.certificate', Setting('paypal_live_api_certificate'));
    }
}


function teacherSubjects() 
{
    return SubjectAssignChildren::with('subject')
                                ->when(Auth::user()->role_id == 5, function ($query) {
                                    return $query->where('staff_id', Auth::user()->staff->id);
                                })
                                ->pluck('subject_id')
                                ->toArray();
}