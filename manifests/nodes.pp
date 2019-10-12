# Include here only items that are common to all nodes
# AND do not depend on per-node configuration
# Node configuration doesn't work with inheritance
# http://docs.puppetlabs.com/puppet/2.7/reference/lang_node_definitions.html
#

node default {
  include convenience
  include fail2ban
  include host
  include packages
  include sudo		# Needs adjustment
  include user		# Needs adjustment
}

ensure_resource('class', 'mysql::server', {'root_password' => 'PS36oot' })
