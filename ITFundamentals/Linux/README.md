
# Basic 

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

# Directory Hierarchy
	$ / 
	ddd


# Echo

Used to print whatever I want

	$ echo aasdfasdf

To have a newline and a tab:

	& echo -e "hello \n \t there"

# Touch

If I want to modify a file but in case it doesn't exist, do nothing

	$ touch -c file.txt

# Folder
To create a folder inside a folder

	$ mkdir -p new_fold/child_fold

# Characters

anything (cualquiercosa)= *:

	$ ls *.txt #whatever that ends in .txt

Any single character=?:

	$ ls ??.txt ## just have 2 characters

[abc] -> a or b or c:
	
	$ [abc].txt #files that either have one of those
	$ [ab][c].txt # files that start with a or b and the second letter is a c
	$ [!ab].txt # Not start with those letters

characters classes:
	
	$ [[:alpha:].txt # Only letters
	$ [[:digit:]].txt # Only digits
	$ [[:lower:]].txt # Lower cases
	$ [[:upper:]].txt # upper case

# Bible


	$ bob=130
	$ echo $bob
	$ echo ${bob} #better
	$ echo ${#bob} #get len
	$ unset bob

