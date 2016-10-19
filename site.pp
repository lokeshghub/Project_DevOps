node default {} # This will apply configuration to all nodes communicating with Master

node 'node'	# This will apply configuration only to the 'node' agent.
{
	include disney	# include the 'disney' module we created earlier.
}

	
