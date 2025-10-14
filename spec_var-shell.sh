#!/bin/bash

echo "All variables passed to the Script: $@"
echo "No of variables: $#"
echo "Script name: $0"
echo "present working directory: $PWD"
echo "home directory of the user who is running the script: $HOME"
echo "which user is running the script: $USER"
echo "PID of the current script: $$"
sleep 10 &
echo "PID of the last command running in background: $!"