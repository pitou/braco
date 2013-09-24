class zmq-php {

  package { 'pear.zero.mq/zmq-beta':
    ensure   => installed,
    provider => pecl,
    require  => [ Exec['php::pear::auto_discover'], Class["puppet-php"] ],
    #notify   => [ Service["nginx"], Service["php5-fpm"] ]
    notify   => Service["nginx"]
  }
}

