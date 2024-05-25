<?php

namespace App\Providers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;
use Illuminate\Pagination\Paginator;
use Modules\MainApp\Entities\School;
use Modules\MainApp\Entities\Package;
use App\Models\WebsiteSetup\Subscribe;
use Illuminate\Support\ServiceProvider;
use App\Models\WebsiteSetup\PageSections;
use Modules\MainApp\Entities\Subscription;
use Modules\MainApp\Enums\PackagePaymentType;
use Stancl\Tenancy\Events\TenancyBootstrapped;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        
        // $this->app['events']->listen(TenancyBootstrapped::class, function ($event) {
            // view()->composer('*', function ($view) {

            //     try {

            //         $subscriber = Subscribe::count(); 
            //         $sections   = PageSections::with('upload')->get();
        
            //         $sectionArr = [];
            //         foreach($sections as $section){
            //             $sectionArr[$section->key]   = $section;
            //         }
                
            //         $view->with([
            //             'sections'   => $sectionArr,
            //             'subscriber' => $subscriber,
            //         ]);
            //     } catch (\Exception $e) {
            //         $view->with([
            //             'sections'   => [],
            //             'subscriber' => 0,
            //         ]);
            //     }
            // });
        // });

    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    { 

        if(env('APP_SAAS')):

            $this->app['events']->listen(TenancyBootstrapped::class, function ($event) {
                view()->composer('*',  function ($view) {

                        try {

                        $subscriber = Subscribe::count(); 
                        $sections   = PageSections::with('upload')->get();
            
                        $sectionArr = [];
                        foreach($sections as $section){
                            $sectionArr[$section->key]   = $section;
                        }
                    
                        $view->with([
                            'sections'   => $sectionArr,
                            'subscriber' => $subscriber,
                        ]);
                    } catch (\Exception $e) {
                        $view->with([
                            'sections'   => [],
                            'subscriber' => 0,
                        ]);
                    }


                
                });

            });
        else:
            view()->composer('*',  function ($view) {

                try {

                $subscriber = Subscribe::count(); 
                $sections   = PageSections::with('upload')->get();
    
                $sectionArr = [];
                foreach($sections as $section){
                    $sectionArr[$section->key]   = $section;
                }
            
                $view->with([
                    'sections'   => $sectionArr,
                    'subscriber' => $subscriber,
                ]);
            } catch (\Exception $e) {
                $view->with([
                    'sections'   => [],
                    'subscriber' => 0,
                ]);
            }


        
        });

        endif;

        if(env('APP_HTTPS')==true){
            URL::forceScheme('https');
        }
        Paginator::useBootstrap();
    }
}
