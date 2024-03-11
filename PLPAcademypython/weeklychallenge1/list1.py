# Accept user input to create a list of integers
numbers = []
while True:
    num = input("Enter an integer (or 'done' to finish): ")
    if num == 'done':
        break
    numbers.append(int(num))

# Compute the sum of all integers in the list
total = sum(numbers)
print("Sum of the integers:", total)
