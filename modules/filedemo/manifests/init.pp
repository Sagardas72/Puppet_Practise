class filedemo {

	File {
		owner => 'root',
		group => 'finance',
		mode  => '0660'
	}
	
	$homedir = '/root'
	$content = 'my file1 content'
	
	file { "${homedir}/myfile1.txt":
		content => $content,
	}
	
	file { "${homedir}/myfile2.txt":
		content => 'myfile2 content',
	}

	file { "${homedir}/myfile3.txt":
		content => 'myfile3',
		owner   => root,
		group   => root,
	}
	
	file { '/root/motd':
		ensure  => present,
		source => 'puppet:///modules/filedemo/motd',
		owner   => root,
		group   => root,
		mode    => '0644',
	}

	file { '/etc/motd':
		ensure => link,
		target => '/root/motd',
	}
}
