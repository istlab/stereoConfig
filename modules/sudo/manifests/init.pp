class sudo {


  package { "sudo": ensure => "latest" }

  # Allow sudo w/o password
  file { '/etc/sudoers':
    ensure   => present,
    source   => 'puppet:///modules/sudo/sudoers',
    owner    => 'root',
    group    => 'root',
    mode     => '440',
    replace  => true,
  }
}
