class base::variables{

	$localvar = 'local variable'	
	$topscope = 'new top scope variable'
	$nodescope = 'new node scope variable'

	notify { "${::topscope} is your top scope variable": }
	notify { "${nodescope} is your node scope variable": }
	notify { "${localvar} is your local scope variable": }
	notify { "${::operatingsystem} is your operating system": }
}
