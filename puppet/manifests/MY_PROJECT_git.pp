class MY_PROJECT_git {

  git::repo { 'MY_PROJECT_clone':
    path    => '/usr/share/nginx/www/MY_PROJECT',
    source  => 'REMOTE_REPOSITORY_PATH/MY_PROJECT.git',
    require => [ Package["git"], Class["nginx"] ],
    #logoutput => true,
  }
}

