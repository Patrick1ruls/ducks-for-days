# robot-framework-docker

### Requirements

    docker
    docker-compose

### Set up

    docker-compose up

### Run the tests

##### Run with docker-compose and environment

    cd robot-framework-docker && docker-compose --env-file ./config/.env.dev up

Contents
========

This image contains the following to facilitate robot testing

Xvfb
----

You can use it to start a visual display and fire up a browser for UI testing.
 
Example (suites/virtual_display.robot):

    Start Virtual Display    1920    1080
    

Selenium2Library
----------------

More details here  http://robotframework.org/Selenium2Library/Selenium2Library.html
