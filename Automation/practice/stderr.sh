# it's when is an error
#!/bin/bash
ls -123 2>stderr_file.txt
ls -a >& file.txt
# The first command will generate an error, and the second command will generate an output.