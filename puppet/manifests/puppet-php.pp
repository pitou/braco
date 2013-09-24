class puppet-php {

    package {
      [  "augeas-tools", "libaugeas-dev", "libaugeas-ruby",
         "php5", "php5-fpm", "php5-common", "php5-xdebug",
         "php-apc", "php5-cli", "php5-imagick", "php5-curl",
         "php5-gd"
      ]
      : ensure  => present, require => Exec["apt-get update"], 
    }

    # modulo puppet-php
    include php
    include php::pear
    include php::dev
    include php::extension::redis

    service { "php5-fpm":
      ensure  => "running",
      require => Package["php5-fpm"],
    }
}

