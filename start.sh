#!/bin/bash

# only on first time
git clone https://github.com/laravel/laravel.git web/src #or place your laravel app inside web/src
docker-compose up --build
echo On a nother command propmt from the simple-laravel-docker location run nextcommands.sh