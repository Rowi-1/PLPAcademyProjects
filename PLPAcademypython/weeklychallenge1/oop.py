
class Person:

    def __init__(self, name, age): # class constructor

        self.name = name 

        self.age = age 



    def displayInfo(self): # class method

        print('Person Name: ', self.name,', Age: ', self.age)



#Calling a Method

#Let's call/Invoke the displayInfo method as shown below:

p1 = Person('Mutemi', 65)

p1.displayInfo()