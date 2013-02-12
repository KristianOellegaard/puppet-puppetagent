class puppetagent::config (
	$puppet_conf_file = $puppetagent::params::puppet_conf_file,
	$plugin_sync = $puppetagent::params::plugin_sync,
	$listen = $puppetagent::params::listen,
	$puppet_master = $puppetagent::params::puppet_master,
	$environment = $puppetagent::params::environment
	) inherits puppetagent::params {
	file {$puppet_conf_file:
		content => template("${module_name}/puppet.conf.erb"),
	}
	if ($::lsbdistid == "Ubuntu")
	{
		file {"/etc/default/puppet":
			content => template("${module_name}/debian_etc_default_puppet.erb")
		}
	}
}