class puppetagent (
	$puppet_conf_file = $puppetagent::params::puppet_conf_file
	) inherits puppetagent::params {
	class {"puppetagent::config":
		puppet_conf_file => $puppet_conf_file,
	}
}