class MY_DATABASE {
  class { 'mysql': }
	
  class { 'mysql::php': }
	
  class { 'mysql::server':
    config_hash => { 'root_password' => 'R4nDoM_P422WORd_i5_r4NdOM' }
  }

  mysql::db { 'create_from_dump':
    user => 'dbuser',
    password => 'an07H3r_CRazY_paZZW0rd',
    sql => 'MY_DUMP_FILE_PATH/dump.sql',
  }
}

