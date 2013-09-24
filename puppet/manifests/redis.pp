class redis($bind_address = "127.0.0.1") {

  package { "redis-server":
    ensure => installed
  }
  service { "redis-server":
    ensure => running,
    require => Package["redis-server"]
  }
}

