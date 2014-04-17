Paasta Monger
=============

The intention of this project is to create Dockerfiles that prepare Docker images for Heroku-style Git application
deployment. The current base use case includes NodeJS application deployment.

This particular extension of Paasta packages a Mongo Database with the base image stack.

## Installation

    cd paasta
    make build n=base
    make build n=monger

## Usage

    # Docker 0.10.0, build dc9c28f
    # Image paasta/*

    FROM paasta/monger
    MAINTAINER *

## Tests

No unit tests are currently present. They aren't currently necessary.

## Contributing

In lieu of a formal style guideline, take care to maintain the existing style.

## Release History

+ 0.0.1 Initial release
