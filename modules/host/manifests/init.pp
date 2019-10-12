# Basic host configuration
class host {

  file { '/etc/hostname':
    content => "stereo\n"
  }

  file { '/etc/timezone':
    content => "Europe/Athens\n",
    notify  => Exec['dpkg-reconfigure -f noninteractive tzdata']
  }

  file { '/etc/localtime':
    source => '/usr/share/zoneinfo/Europe/Athens'
  }

  file { '/etc/motd':
    content => "\nWelcome to stereo: the Business Analytics Laboratory research server!\n\n"
  }

  exec { 'dpkg-reconfigure -f noninteractive tzdata':
    refreshonly => true
  }

  file { '/etc/hosts':
    source => 'puppet:///modules/host/hosts'
  }
}
