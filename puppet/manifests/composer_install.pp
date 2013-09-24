class composer_install {

  exec { "MY_PROJECT_symfony_vendor_install":
    command => 'composer install',
    path => '/usr/local/bin:/usr/bin:/usr/sbin',
    cwd => '/usr/share/nginx/www/MY_PROJECT',
    require => [ Class["composer"], Class["MY_PROJECT"], Class["zmq-php"] ],
    environment => [ "COMPOSER_HOME=/root/.composer", "TMPDIR=/tmp" ],
    timeout => 0,
    logoutput => true,
  }
  
}

