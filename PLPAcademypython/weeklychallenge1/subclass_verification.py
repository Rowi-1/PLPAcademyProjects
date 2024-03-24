#In Python, we can verify whether a particular class is a subclass of another class. For this purpose, we can use Python built-in function issubclass(). This function returns True if the given class is the subclass of the specified class. Otherwise, it returns False.
#Syntax
#issubclass(class, classinfo)

#Where,
#class: class to be checked.
#classinfo: a class, type, or a tuple of classes or data types.
class Company:
    def fun1(self):
        print("Inside parent class check")
class Employee(Company):
    def fun2(self):
        print("Inside child class.")
class Player:
    def fun3(self):
        print("Inside Player class.")