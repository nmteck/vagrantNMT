# NMTeck Vagrant Setup for PHP Developer  #

## Overview ##
For far too many years, I've worked on a number of projects with hundreds of different people, all using differently configured operating systems and hardware. Over time this has introduced many, many issues with source control, live/development environment issues caused because of differences, frustration for developers that do not have a clear guide on setting up the development environment and I can go on. This project is what I use as well as my contractors and it is very simple and easy to setup.

## Details ##
This vagrant build will take care of the basic LAMP Stack tools needed to run a website.  There is no need to install PHP, MySQL or Apache locally as they will be installed automatically into your VM.

This base setup uses the "precise32.box" that is referenced on the VagrantUp.com website. If you are familiar with vagrant already, you should be familiar with this box. It is a base setup and doesn't have much installed by default.

---

Follow the instructions below to setup a basic PHP Development environment for testing your websites.

# Pre-requisites #
Setup a local 'www' folder to house your code. You should not run this code as _root_. Instead, cerate the folder as your local/domain user.

```bash
$ mkdir ~/www
```

## Download Repo ##
Clone this repo to your local machine.

```bash
$ git clone https://github.com/nmteck/vagrantNMT.git
```

## Details ##
Go to the folder that you downloaded the repo and open a shell. Then _vagrant up_.
```bash
$ cd [_vagrant-repo-path_]
$ vagrant up
```

## Run Web Applications ##
You can now put your web apps into _~/www_. Go to ```localhost:8080``` to preview the server is up and running.