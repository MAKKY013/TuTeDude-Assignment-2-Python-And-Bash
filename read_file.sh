#!/bin/bash
# TuTeDude Assignment 2 – Python and Bash : Read from a File
# Bash version

filename="output.txt"

if [ -f "$filename" ]; then
    echo "File contents:"
    cat "$filename"
else
    echo "Error: $filename not found."
fi
