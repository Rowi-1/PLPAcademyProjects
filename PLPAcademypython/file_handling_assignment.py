# File Creation
with open("my_file.txt", 'w') as file:
    file.write("This is line 1\n")
    file.write("12345\n")
    file.write("Another line here with some text\n")

# File Reading and Display
try:
    with open("my_file.txt", 'r') as file:
        print("Content of my_file.txt:")
        print(file.read())
except FileNotFoundError:
    print("File not found.")
except PermissionError:
    print("Permission denied to access the file.")
finally:
    print("File reading completed.\n")

# File Appending
with open("my_file.txt", 'a') as file:
    file.write("This is line 4\n")
    file.write("67890\n")
    file.write("Appending more text to the file\n")

# File Reading and Display after appending
try:
    with open("my_file.txt", 'r') as file:
        print("Content of my_file.txt after appending:")
        print(file.read())
except FileNotFoundError:
    print("File not found.")
except PermissionError:
    print("Permission denied to access the file.")
finally:
    print("File reading after appending completed.\n")
