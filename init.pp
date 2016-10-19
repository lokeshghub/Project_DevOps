#Class that can be referenced by any manifest
class disney
{
	#Exec resource name: apt-update
	exec
	{
		'apt-update':
		command => '/usr/bin/apt-get update'
	}
	#Package to be installed
	package 
	{ 
		'apache2':
  		require => Exec['apt-update'],        # require 'apt-update' before installing
		ensure => installed,
	}

	# ensure apache2 service is running
	service 
	{ 
		'apache2':
	  	ensure => running,
	}
	#File resource to copy test.html on agent
	file
	{
		'/var/www/html/test.html':
		ensure => present,
		mode => 0644,
		content => file("/etc/puppet/modules/disney/files/test.html")
	}
	#File resource to copy default-ssl on agent
	file
	{
		'/etc/apache2/sites-available/default-ssl':
		ensure => present,
		mode => 0644,
		content => file("/etc/puppet/modules/disney/files/default-ssl")
	}
}
