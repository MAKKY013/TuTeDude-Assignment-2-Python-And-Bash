# Student Grades Program using Dictionary

students = {}

while True:
    print("\nOptions:")
    print("1. Add a new student")
    print("2. Update an existing student's grade")
    print("3. Print all student grades")
    print("4. Exit")

    choice = input("Enter your choice (1-4): ")

    if choice == "1":
        name = input("Enter student name: ")
        grade = input("Enter student grade: ")
        students[name] = grade
        print(f"{name} added with grade {grade}.")

    elif choice == "2":
        name = input("Enter student name to update: ")
        if name in students:
            grade = input("Enter new grade: ")
            students[name] = grade
            print(f"{name}'s grade updated to {grade}.")
        else:
            print(f"{name} not found in records.")

    elif choice == "3":
        if students:
            print("\n--- Student Grades ---")
            for name, grade in students.items():
                print(f"{name}: {grade}")
        else:
            print("No student records found.")

    elif choice == "4":
        print("Exiting program.")
        break

    else:
        print("Invalid choice. Please enter 1-4.")
