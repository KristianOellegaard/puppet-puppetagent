class puppetagent::params {
	$puppet_conf_file = '/etc/puppet/puppet.conf'
	$plugin_sync = true
	$puppet_master = inline_template("<%= %x{cat /etc/puppet/puppet.conf | grep certname | sed -e 's/certname=//'} %>")
	$listen = false
	$environment = false
}