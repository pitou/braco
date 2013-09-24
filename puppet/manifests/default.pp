notify {"VIRTUAL => $virtual":
    withpath => true,
}

exec { "apt-get update":
  path => "/usr/bin",
}

package {
  [  "build-essential", "git", "curl", "imagemagick",
     "ffmpeg", "libzmq-dev", "pkg-config" 
  ] : ensure  => present,
  require => Exec["apt-get update"],
}

package { 
  [ "apache2", "apache2.2-bin" ] : ensure => purged
}

include git

include nginx

include redis

include puppet-php

include zmq-php

include composer

# if we are not in a VirtualBox machine we need to clone
# the project from a remote repository
if $virtual != 'virtualbox' {
  include MY_PROJECT_git
}

include MY_PROJECT

if $virtual != 'virtualbox' {
  include composer_install
}

include MY_DATABASE

