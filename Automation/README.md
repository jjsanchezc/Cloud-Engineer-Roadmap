# Automation

## Bash Scripting - Automation

# Scriptring

To start creating a scripting file, it should start with: 

	#! /bin/bash

That's for choosing which shell will exec the code, then I could start writing.

to execute the file:

	$ chmod +x <file_name> # to turn into scrip or exec
	or 
	$ bash <file_name>.sh 

To add comments:

	# this is a comment
	'this is also a comment'


### Pipes
Workflows, the output or the arguments of a script could be used on other sript

	$ ls | wc -l
	$ ls -l | sort -k5 -rn


