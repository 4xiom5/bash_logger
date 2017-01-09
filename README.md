# Bash logger
Just a simple logger for bash scripts
## Usage
Import the logger in the current bash script
```sh
source logger.sh /path/to/my/log/file
```
Then use it
```sh
# INFO level log
INFO my info message
# DEBUG level log
DEBUG my debug message
# ERROR level log
ERROR my error message
# Custom level log
LOG "MY LEVEL" MY LEVEL can be replaced by your level name
```
Output example
```
[2017-01-09 11:03:16] [INFO] my info message
[2017-01-09 11:03:16] [DEBUG] my debug message
[2017-01-09 11:03:16] [ERROR] my error message
[2017-01-09 11:03:16] [MY LEVEL] MY LEVEL can be replaced by your level name
```
