class test {
	$osfamily = '1'
	#notify { 'test':
#		message => $osfamily
#	 }
	notify { 'test': 
		message => $variable
	}
}
