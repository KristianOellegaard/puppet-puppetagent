class puppetagent::config (
	$puppet_conf_file = $puppetagent::params::puppet_conf_file,
	$plugin_sync = $puppetagent::params::plugin_sync,
	) inherits puppetagent::params {
	file {$puppet_conf_file:
		template => 'puppet.conf.erb'
	}
}