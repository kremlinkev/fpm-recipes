# [fpm-recipes](https://hub.docker.com/r/davewongillies/fpm-recipes/)

[![Build Status](https://travis-ci.org/davewongillies/fpm-recipes.svg?branch=master)](https://travis-ci.org/davewongillies/fpm-recipes) [![Docker Hub Build Status](https://img.shields.io/docker/build/davewongillies/fpm-recipes.svg)](https://hub.docker.com/r/davewongillies/fpm-recipes/builds/) ![Docker Hub Build Automated](https://img.shields.io/docker/automated/davewongillies/fpm-recipes.svg) [![Docker Hub Pulls](https://img.shields.io/docker/pulls/davewongillies/fpm-recipes.svg)](https://hub.docker.com/r/davewongillies/fpm-recipes/)

## Overview

My collection of personal [fpm-cookery](https://github.com/bernd/fpm-cookery) recipes. Mostly tested against Ubuntu Xenial 16.04, some recipes might also work against Debian Jessie and Wheezy if you're/I'm lucky

## Usage

```
$ ./fpm-cook.sh <recipe_dir_name> (optional <distro-code-name>)
```

Options for distro:
  * ubuntu-xenial
  * ubuntu-trusty
  * ubuntu-lucid
  * debian-jessie
  * debian-wheezy

## apt repo setup

The packages from this repo also get published to [bintray](https://bintray.com/davewongillies/fpm-recipes). Currently they are only built for Ubuntu 16.04. To add this repo to your system:
1. `sudo apt-key adv --keyserver keyserver.ubuntu.com --recv D401AB61`
1. `echo "deb https://dl.bintray.com/davewongillies/fpm-recipes xenial main" | sudo tee -a /etc/apt/sources.list.d/davewongillies-fpm-recipes.list`
