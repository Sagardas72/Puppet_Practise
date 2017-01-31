class ntp ($package = $ntp::params::package) inherits ntp::params {
	
	notify { "The package value is ${package}": }
	package { 'ntp':
		name   => $package,
		ensure => present,
	}
	
	class { 'ntp::file': }
	include ntp::service
}
