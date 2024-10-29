<?php

namespace Modules\Develop;

use Catch\Support\Module\Installer as ModuleInstaller;
use Modules\Develop\Providers\DevelopServiceProvider;

class Installer extends ModuleInstaller
{
    protected function info(): array
    {
        // TODO: Implement info() method.
        return [
            'title' => '开发管理',
            'name' => 'develop',
            'path' => 'develop',
            'keywords' => 'develop',
            'description' => '开发管理模块',
            'provider' => DevelopServiceProvider::class
        ];
    }

    protected function requirePackages(): void
    {
        // TODO: Implement requirePackages() method.
    }

    protected function removePackages(): void
    {
        // TODO: Implement removePackages() method.
    }
}
