# Clone the specified source code package using Git
define git_clone($url, $args = '', $directory = '/usr/local/src',
  $user = 'root') {

  exec { "git clone $name":
    command   => "git clone $args $url $name",
    cwd       => $directory,
    creates   => "${directory}/${name}",
    require   => Package['git'],
    logoutput => on_failure,
    user      => $user,
  }

}
