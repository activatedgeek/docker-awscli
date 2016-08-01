# docker-awscli

| [![Build Status](https://travis-ci.org/activatedgeek/docker-awscli.svg?branch=master)](https://travis-ci.org/activatedgeek/docker-awscli) | [![](https://imagelayers.io/badge/activatedgeek/awscli:latest.svg)](https://imagelayers.io/?images=activatedgeek/awscli:latest 'Get your own badge on imagelayers.io') |
|:-:|:-:|

An [`awscli`](https://aws.amazon.com/cli/) image based on Alpine Docker (includes Git-LFS).
Largely for CI purposes

The container contains the following:
* `Git`
* `Git LFS`
* `AWS CLI` (`1.10.*`)

## Images
* `latest`, `0.1`, `0.1.1` ([Dockerfile](./Dockerfile))

## Usage
Pull the docker image from Docker hub as:
```
$ docker pull activatedgeek/awscli
```
By default, this will pull the latest image.

To persist the state changes like `configure`, you must use the volume mount
to `/root/.aws` folder and make it writeable.

A sample command looks like:
```
$ docker run --rm -v $(pwd)/.aws:/root/.aws:rw --entrypoint=sh activatedgeek/awscli:latest aws --version
```

## Build
To build the latest image from source, run
```
$ make devel
```
