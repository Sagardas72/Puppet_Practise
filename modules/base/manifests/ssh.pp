class base::ssh {
#	case $osfamily {
#		'RedHat': { $ssh_name = 'sshd' }
#		'Debian': { $ssh_name = 'ssh' }
#		default: { fail('OS not supported by puppet module SSH') }
#	}
#
#	$ssh_name = $osfamily ? {
#		'RedHat' => 'sshd',
#		'Debian' => 'ssh',
#		default  => value,
#	}

	package { 'openssh-package':
		name   => 'openssh-server',
		ensure => present,
	}

	file { '/etc/ssh/sshd_config':
		ensure  => file,
		owner   => 'root',
		group   => 'root',
		source  => 'puppet:///modules/base/sshd_config',
		require => Package['openssh-package'],
#		notify  => Service['ssh-running-name-two'],
		notify  => Service['ssh-service'],
	}

	service { 'ssh-service':
		name      => $base::params::ssh_name,
		alias     => 'ssh-running-name-two',
		ensure    => running,
		enable    => true,
	}
}
