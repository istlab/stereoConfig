# Monitor and stop password guessing login attacks
class fail2ban {

  package { 'fail2ban' : }

  file { '/etc/fail2ban/jail.local':
    source  => 'puppet:///modules/fail2ban/jail.local',
    mode    => '644',
    notify  => Service['fail2ban'],
    require => Package['fail2ban'],
  }

  service { 'fail2ban':
    ensure => 'running',
    enable => true,
    require => [
      File['/etc/fail2ban/jail.local'],
    ]
  }
}
