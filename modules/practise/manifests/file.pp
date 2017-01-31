class practise::file {

	file { 'motd2':
		path    => '/etc/motd.tail',
		content => 'Welcome to my server 2!',
	}

	file { 'motd2':
		path    => '/etc/motd',
		content => 'Welcome to my server 2!',
	}
}
