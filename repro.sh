#!/bin/bash

# echo commands
set -x

# Find the PIDs of nvim --embed processes
pid=$(pgrep -n -f "nvim --embed")

# Stop the process
kill -s STOP $pid

# Update the file
echo " package test" > main.go

# Resume the process
kill -s CONT $pid
