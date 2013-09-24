class nginx {
    package { "nginx" : 
      ensure  => present,
      require => Exec["apt-get update"], 
    }

    service { "nginx":
      ensure  => "running",
      require => Package["nginx"],
    }

    if $virtual == "virtualbox" {
      $vhost_conf_path = "/vagrant/nginx/sites-available/default"
    }
    else {
      # on the VPS, we cloned our braco repository into /root/vagrant,
      # feel free to change this path
      $vhost_conf_path = "/root/vagrant/nginx/sites-available/default"
    }

    # let's copy the custom virtualhost file
    file { "virtualhost":
      path => "/etc/nginx/sites-available/default",
      ensure => "present",
      source => $vhost_conf_path,
      notify  => Service["nginx"],
      require => Package["nginx"],
    }
}

