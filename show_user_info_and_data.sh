#!/bin/bash

USERNAME="$1"
DIR_PATH="$2"

ERROR_MESSAGE="Finding \"root\" user data is not allowed!"

# 1.2.4.
[[ "$USERNAME" -eq root ]] && echo "$ERROR_MESSAGE" 1>&2 && exit 42

# 1.2.2.
find "$DIR_PATH" -user "$USERNAME" | sed "s/\(.*\)/\1 is found!/"

# 1.2.3.
ps -u "$USERNAME" -o pid,user,comm
