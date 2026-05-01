# Program to create a text file and write content

with open("output.txt", "w") as file:
    file.write("Hello, this is Assignment 3.\n")
    file.write("We are writing to a file using Python.\n")

print("Content written to output.txt successfully.")
