#base/parent class
class Vehicle:
    def Vehicle_info(self):
        print('Inside Parent(Vehicle) class')

#child class 
class Car(Vehicle):
    def car_info(self):
        print('Inside Child(Car) class')

    
#class object of car
car = Car()
car.Vehicle_info()

car.car_info()        
