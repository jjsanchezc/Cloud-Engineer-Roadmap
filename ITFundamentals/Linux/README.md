
# Basic 

## Linux File System
15 basic directories

	/ #root directory system
	/bin #essential binary executables for the system
	/usr/bin # where I can find apps binaries
	/sbin #System administration binaries
	/var #Variable data
	/var/log #logfiles
	/home #user's home directory
	/tmp #temporary files 
	/root #home directory for root user
	/etc #system level config files
	/lib #shared libraries

view current working directory
```
$ pwd
```

Create Files
```
$ touch file.txt
$ cat > file.txt
```
the hash allows me to write whatever I want on the terminal:

	$ #

To get all the info about files or foders

	$ ls -l

To go back where I was:

	$ cd -

To copy a Dir to other Dir:

	$ cp -r #The -r stands for recursive


Deleting Files:
```
$ rm file.txt
$ rm -i [filename] # Ask for confirmation
$ rmdir [directory]
```

***Note:*** When I remove something it will not go to trash

## Directory Hierarchy
	$ / 
	


## Echo

Used to print whatever I want

	$ echo aasdfasdf

To have a newline and a tab:

	& echo -e "hello \n \t there"

## Touch

If I want to modify a file but in case it doesn't exist, do nothing

	$ touch -c file.txt

## Folder
To create a folder inside a folder

	$ mkdir -p new_fold/child_fold

## Characters

anything (cualquiercosa)= *:

	$ ls *.txt #whatever that ends in .txt

Any single character=?:

	$ ls ??.txt ## just have 2 characters

[abc] -> a or b or c:
	
	$ [abc].txt #files that either have one of those
	$ [ab][c].txt # files that start with a or b and the second letter is a c
	$ [!ab].txt # Not start with those letters

characters classes:
	
	$ [[:alpha:]].txt # Only letters
	$ [[:digit:]].txt # Only digits
	$ [[:lower:]].txt # Lower cases
	$ [[:upper:]].txt # upper case

## Bible


	$ bob=130
	$ echo $bob
	$ echo ${bob} #better
	$ echo ${#bob} #get len
	$ unset bob

To create an environment variable

	$ export <var_name>

Example:

	$ export bob

To make it permanent:
	create a .bashrc

## Process

list the process I've running

	$ ps

## Help

To get help with any command

	$ help 
	$ info <command>
	$ man <command>
	$ apropos <keyword> # search that keyword in the manuals

# Users management

## Get users

	$ cat /etc/passwd

## adduser 

	$ sudo adduser <username> #asks for more info 
	$ sudo useradd <username> # (not recommended) dont ask for much info 

## Delete user

	$ sudo deluser <username>
	$ sudo userdel <username>

## Groups

### Create a group

	$ sudo groupadd <groupname>

### Get groups

	$ cat /etc/group
	$ groups

### Add user to group

	$ sudo usermod -G <group_name> <username>  # will add only to that group 
	$ sudo usermod -aG <group_name> <username> # add to the actual group and the new 

### Remove user from a group

	$ sudo gpasswd -d <username> <group_name>

## modify user account

	$ sudo usermod <username> [<options>]
## chmod

used for edit file and dir permissions

3 types of permissions
- Reading (r)
- Writing (w)
- Execution (x)

type of Users:
- Owner (u)
- Group (g)
- Other (o)

When executing `ls -l`the output will show something like

	-rwxrwxr-x 1 jjsanchez jjsanchez   34 Feb  3 18:25 helloworld.sh
	-rw-rw-r-- 1 jjsanchez jjsanchez 1665 Feb  3 18:25 README.md

The 1st column is the permission column, 2nd is the owner of the file or dir, 3rd is the group

each sub-colum from the first column is divided in groups of 3 characters, but the first char will say if it's a dir or not

- 1st sub-column is the Users/Owner's column
- 2nd sub-column is the group's column
- 3rd sub-column is the Other's column

example:
	drwxrwxr-x 2 jjsanchez jjsanchez 4096 Feb  3 18:13 Linux

if we divide the subcolumns we could see: 
- `d` : meaning it's a dir
- `rwx`: the owner can read write and execute files inside of it
- `rwx`: the group have the same permission as the owner
- `r-x`: the other can read and execute but can't write

### Modifying permissions 

To modify permission I have to write `chmod`at the beggining,
there are 3 ways to modify:
- add a permission : `+`
- remove a permission : `-`
- set permission : `=`

example:

	$ chmod <sign><permission> <file_name>

for the =

	$ chmod <type_of_user>=<permissions> <file_name>

then if I want to modify for a specific group:

	$ chmod <type_of_user><sign><permission> <file_name>

To add all permissions to all of users:
	$ chmod 777 <file_name>


## chown

change owner of files and dir

## Sudo file

to modify permission of sudo file:

	$ sudo visudo  #to get in the file

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

# References

- [Video1](https://www.youtube.com/watch?v=H4ayPYcZEfI)
