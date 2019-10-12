# http://projects.puppetlabs.com/projects/1/wiki/Download_File_Recipe_Patterns
define download($site) {

  exec { $name:
    command => "wget -O ${name} ${site}/${name}",
    cwd => $downloads,
    creates => "${downloads}/${name}",
    logoutput=> on_failure,
  }
}
