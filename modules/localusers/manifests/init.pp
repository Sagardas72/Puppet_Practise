class localusers {
	user { 'admin':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/admin',
		gid        => 'wheel',
		managehome => true,
		password   => '$6$VFt4//4C$v2LLZ0XgCAYeoO37ANCig.QKwK4riV/zmG1ar4EIr284x9zFskQbx56qVrMPIR9BP/TGF5M7h6/NNzRI5Dayx.',
	}

	user { 'jeff':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/jeff',
		groups     => ['wheel','finance'],
		managehome => true,
	}
}
