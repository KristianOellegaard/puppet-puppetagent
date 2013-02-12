class puppetagent (
	$puppet_conf_file = $puppetagent::params::puppet_conf_file,
	$plugin_sync = $puppetagent::params::plugin_sync,
	$listen = $puppetagent::params::listen,
	$puppet_master = $puppetagent::params::puppet_master,
	$environment = $puppetagent::params::environment
	) inherits puppetagent::params {
	class {"puppetagent::config":
		puppet_conf_file => $puppet_conf_file,
		plugin_sync => $plugin_sync,
		listen => $listen,
		puppet_master => $puppet_master,
		environment => $environment,
	}
}