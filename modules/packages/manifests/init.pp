# List needed packages here
# Where a package foo is required write
# realize(Package['foo'])
# require => Package['foo']

class packages {
  @package {'gcc': }
  @package {'make': }
}
