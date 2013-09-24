class MY_PROJECT {

  augeas { "cli php.ini":
    notify  => Service["php5-fpm"],
    require => [ Package["php5-fpm"] ],
    context => "/files/etc/php5/cli/php.ini/PHP",
    changes => [
      "set extension zmq.so",
      "set memory_limit 256M",
    ];
  }

  augeas { "fpm php.ini":
    notify  => Service["php5-fpm"],
    require => [ Package["php5-fpm"] ],
    context => "/files/etc/php5/fpm/php.ini/PHP",
    changes => [
      "set extension zmq.so",
      "set memory_limit 256M",
    ];
  }
}

