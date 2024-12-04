#!/bin/bash
RED="\e[31m"
dir=".banner"
file=$( ls "$dir" | shuf -n 1)
cat "$dir/$file"
