# Running Wordpress with composer and official Wordpress images
This is a basic project for setting up a docker container running on the official Wordpress image, but with support for composer.

## Requirements
 - Docker
    Get it from http://hub.docker.com
 - Docker-compose
    Get it from http://hub.docker.com
 - Composer (optional)
    Get it from https://getcomposer.org

## Getting started
Before you start, make sure you've selected the version of Wordpress you would like to use in the Dockerfile at the top. Then just run ```docker-compose up``` you should have you development environment running. Wordpress is hosted on localhost:80, PHPMyAdmin on localhost:8080 and a MySQL server at localhost:3306. See the credentials in docker-compose.yml file.

## Plugins
All plugins are handled by composer. Search for the plugins at the repository at https://wpackagist.org. Add new plugins with the command ```composer require wpackagist-plugin/akismet``` for in this case to add the wp-plugin akismet. All plugins must be handled by composer, else they won't be available when deploying the image to another enviroment.
