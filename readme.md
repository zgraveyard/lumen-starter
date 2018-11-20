# Lumen Starter Kit

## Intro

This is a small template I've built based on Lumen framework, after I spent some time preparing for a small project.
So to make my life easier later, I decided to create this template.

# Installing and running the code

## Requirements

Please make sure that you have installed [Docker](https://docker.com) with *Docker Compose*.


## Setup the local IP

In order to get the container up and running, you can follow these simple steps.

Add an entry `127.0.0.1 api.docker.local` to your `/etc/hosts` file:
```bash
sudo echo "127.0.0.1 api.docker.local" >> /etc/hosts
```

## Running the image

All you have to do is to execute the command:

```
./bin/docker_run
```

## Docker customization:

This image comes with a ready to use `Dockerfile` and `docker-compose.yml` which you can either modify as you like.

The preferred way to override `docker-compose.yml` values is to add a new file called `docker-compose.override.yml` 
and change the value that you want over there, please refer to this [post](https://docs.docker.com/compose/extends/#example-use-case) 
from Docker documentation about extending and having multiple compose files.

## Note:

Please note that this template is using [Swoole Laravel](https://github.com/swooletw/laravel-swoole) package to 
help running your code faster, feel free to read more about [Swoole](https://www.swoole.co.uk/#get-started).

---

# Lumen PHP Framework

[![Build Status](https://travis-ci.org/laravel/lumen-framework.svg)](https://travis-ci.org/laravel/lumen-framework)
[![Total Downloads](https://poser.pugx.org/laravel/lumen-framework/d/total.svg)](https://packagist.org/packages/laravel/lumen-framework)
[![Latest Stable Version](https://poser.pugx.org/laravel/lumen-framework/v/stable.svg)](https://packagist.org/packages/laravel/lumen-framework)
[![Latest Unstable Version](https://poser.pugx.org/laravel/lumen-framework/v/unstable.svg)](https://packagist.org/packages/laravel/lumen-framework)
[![License](https://poser.pugx.org/laravel/lumen-framework/license.svg)](https://packagist.org/packages/laravel/lumen-framework)

Laravel Lumen is a stunningly fast PHP micro-framework for building web applications with expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly fulfilling. Lumen attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as routing, database abstraction, queueing, and caching.

## Official Documentation

Documentation for the framework can be found on the [Lumen website](https://lumen.laravel.com/docs).

## Security Vulnerabilities

If you discover a security vulnerability within Lumen, please send an e-mail to Taylor Otwell at taylor@laravel.com. All security vulnerabilities will be promptly addressed.

## License

The Lumen framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

