#Install composer#
curl -sS https://getcomposer.org/installer | php

#Move the composer folder#
sudo mv composer.phar /usr/local/bin/composer

1st way Globally
composer global require "laravel/installer"
export PATH="~/.composer/vendor/bin:$PATH"
laravel new testapp

2nd way Locally
composer create-project --prefer-dist laravel/laravel blog

Run the command line in application folder
blog$ sudo chmod -R o+w storage //for globally
blog$ php artisan serve    //for locally

You must run the xampp before laravel
sudo /opt/lampp/lampp start
sudo /opt/lampp/lampp stop


https://itrendbuzz.com/install-laravel-framework-on-ubuntu/


Laravel Commamds :
1. Make authentication : php artisan make:auth
2. Make Admin controller in Admin folder : php artisan make:controller Admin/HomeController.php
