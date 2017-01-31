class base::if {
	if $::hostname =~ /^sdas(\d+)/ {
		notice("you have arrived at server $0")
	}
}
