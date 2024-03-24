class Company:
    def company_name(self):
        return "Google"
    
class Employee(Company):
    def info(self):
        #calling the superclass method using the super()function
        c_name = super().company_name()
        print("Winga works at", c_name)

#creating object of the child class
        emp = Employee()
        emp.info()