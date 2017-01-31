class democonsole ($param1 = "param 1 default") {
	notify { "This is the value of variable console_test ${console_test}": }
	notify { "The value of our parameter 1 is ${param1}": }
}
