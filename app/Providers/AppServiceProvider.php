<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Damascene\LumenMake\LumenMakeServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register()
    {
        if (!$this->app->environment('production')) {
            $this->app->register(LumenMakeServiceProvider::class);
        }
    }
}
