class postgresql {
  # Note:
  # Control database with sudo systemctl start|stop postgresql@9.6-main.service

  # Setup data under /home
  file_line { 'postgresql data directory':
    path    => '/etc/postgresql-common/createcluster.conf',
    line    => "data_directory = '/home/postgresql/%v/%c'",
    match   => "#data_directory =.*",
    require => Package['postgresql-9.6'],
    notify  => Exec['pg_createcluster 9.6 main']
  }

  exec {'pg_createcluster 9.6 main':
    refreshonly => true
  }

  package{'postgresql-9.6': }
  package{'postgresql-client-9.6': }
  package{'postgresql-client-common': }
  package{'postgresql-common': }
  package{'postgresql-contrib-9.6': }
  package{'postgresql-doc-9.6': }
  package{'postgresql-9.6-debversion': }
}
