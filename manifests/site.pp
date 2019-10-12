
# Set global defaults
Exec {
  path => "/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin/:/bin:/sbin",
  logoutput => on_failure
}

File {
  mode  => '0644',
  owner => 'root',
  group => 'root',
}

# Downloads area for packages we compile from source
$downloads = "/usr/local/src/downloads"

file { $downloads :
  ensure => directory
}

User {
  managehome => true,
}
