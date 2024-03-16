# Request input from the user
user_input = int(input("Please enter your score: "))  # Convert input to an integer

# Determine grade based on the score
if user_input >= 90:
    print('Your grade is A')
elif user_input >= 80:
    print('Your grade is B')
elif user_input >= 70:
    print('Your grade is C')
elif user_input >= 60:
    print('Your grade is D')
else:
    print('Your grade is F')
