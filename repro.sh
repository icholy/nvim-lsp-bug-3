#!/bin/bash

# Find the PIDs of nvim --embed processes
pid=$(pgrep -n -f "nvim --embed")

# Stop the process
kill -s STOP $pid

# Update the file
echo " console.log('test')" > test.js

# Resume the process
kill -s CONT $pid
