Braco
-----

This is my first precious attempt to configure two identical development and production environments using Vagrant and Puppet.

You'll find in this repository all I needed to install and setup in my last big project (which name is replaced with "MY_PROJECT"):

* Debian 7.0
* Nginx
* PHP
* Mysql
* Redis + redis extension for PHP
* ZeroMQ + zmq extension for PHP
* Git
* Composer

In my project I use Symfony 2, so you may find some references to it (e.g. vendor/ creation using Composer).

Some useful Puppet modules are present in the puppet/modules, maybe one day I'll push them as git submodules.

Ciao
