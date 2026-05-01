#!/bin/bash
# Student Grades Program using associative arrays

declare -A students

while true; do
    echo ""
    echo "Options:"
    echo "1. Add a new student"
    echo "2. Update an existing student's grade"
    echo "3. Print all student grades"
    echo "4. Exit"

    read -p "Enter your choice (1-4): " choice

    if [ "$choice" == "1" ]; then
        read -p "Enter student name: " name
        read -p "Enter student grade: " grade
        students["$name"]=$grade
        echo "$name added with grade $grade."

    elif [ "$choice" == "2" ]; then
        read -p "Enter student name to update: " name
        if [[ -v students["$name"] ]]; then
            read -p "Enter new grade: " grade
            students["$name"]=$grade
            echo "$name's grade updated to $grade."
        else
            echo "$name not found in records."
        fi

    elif [ "$choice" == "3" ]; then
        if [ ${#students[@]} -eq 0 ]; then
            echo "No student records found."
        else
            echo "--- Student Grades ---"
            for name in "${!students[@]}"; do
                echo "$name: ${students[$name]}"
            done
        fi

    elif [ "$choice" == "4" ]; then
        echo "Exiting program."
        break

    else
        echo "Invalid choice. Please enter 1-4."
    fi
done
