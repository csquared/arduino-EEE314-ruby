# Arduino EEE314 Ruby Web Module

Server-side component of Arduino EEE314 class.

Defines 3 endpoints:

### GET /
Returns an HTML page with the current LED status.

### GET /led
Returns a response body with the current LED status.

### POST /led
Set the led status to the request body.

## Install

    > git clone https://github.com/csquared/arduino-EEE314-ruby.git
    > gem install bundler
    > bundle install

## Run

    > ./bin/web

or if you have the Heroku toolbelt installed:

    > foreman start web
