# TuTeDude Assignment 2 – Python and Bash : Read from a File
# Python version

try:
    with open("output.txt", "r") as file:
        content = file.read()
        print("File contents:\n")
        print(content)
except FileNotFoundError:
    print("Error: File not found.")
