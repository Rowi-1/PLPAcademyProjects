# Parent class
class Vehicle:
    def __init__(self, brand):
        self.brand = brand
    
    def display_brand(self):
        print("Vehicle brand:", self.brand)


# Hierarchical inheritance
class Car(Vehicle):
    def __init__(self, brand, model):
        super().__init__(brand)
        self.model = model
    
    def display_model(self):
        print("Car model:", self.model)


# Hierarchical inheritance
class Truck(Vehicle):
    def __init__(self, brand, capacity):
        super().__init__(brand)
        self.capacity = capacity
    
    def display_capacity(self):
        print("Truck capacity:", self.capacity)


# Multiple inheritance
class SportCar(Car, Vehicle):
    def __init__(self, brand, model, top_speed):
        Car.__init__(self, brand, model)
        Vehicle.__init__(self, brand)  # Initialize Vehicle separately to avoid calling Car's __init__ twice
        self.top_speed = top_speed
    
    def display_speed(self):
        print("Sport car top speed:", self.top_speed)


# Creating instances
car = Car("Toyota", "Camry")
truck = Truck("Ford", "2000 kg")
sport_car = SportCar("Ferrari", "488 GTB", "330 km/h")

# Demonstrating hierarchical inheritance
car.display_brand()   # Output: Vehicle brand: Toyota
car.display_model()   # Output: Car model: Camry

truck.display_brand()    # Output: Vehicle brand: Ford
truck.display_capacity() # Output: Truck capacity: 2000 kg

# Demonstrating multiple inheritance
sport_car.display_brand()  # Output: Vehicle brand: Ferrari
sport_car.display_model()  # Output: Car model: 488 GTB
sport_car.display_speed()  # Output: Sport car top speed: 330 km/h
