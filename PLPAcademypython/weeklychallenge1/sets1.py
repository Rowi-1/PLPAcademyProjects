# Accept user input to create two sets of integers
set1 = set(map(int, input("Enter integers for set 1 (comma-separated): ").split(',')))
set2 = set(map(int, input("Enter integers for set 2 (comma-separated): ").split(',')))

# Create a new set that contains only the elements that are common to both sets
common_elements = set1.intersection(set2)

print("Common elements:", common_elements)
