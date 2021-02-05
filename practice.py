



#Defining Function Example
def cube(y):
    return y*y*y
print(cube(2))

#Lambda Function Example
lambda_y=lambda y: y*y*y
print(lambda_y(2))

#Lambda Funciton Example 2
num_list=[1,2,3,4,5,6,7,8,9,10]
odd=list(filter(lambda z: (z%2 !=0),num_list))
print(odd) 

#Lambda Function Example 3
even=list(filter(lambda w: (w%2 ==0), num_list))
print(even)

#Map Function
i=list(map(cube, num_list))
print(i)

# breakpoint()


# For Loop
def tripples(j):
    for i,num in enumerate(j):
        print(num*num*num)
tripples(num_list)

# u=[j*j*j*j for j in num_list]
# u

# for i,num in enumerate(num_list):
#     summ=(i + i)



class employee:
    def __init__(self, name, employee_number):
        self.name=name
        self.employee_number=employee_number
    def print_employee(self):
        print(self.name, self.employee_number)

x=employee("John", 10)
x.print_employee ()




class employee:
  def __init__(self, name, employee_number):
    self.name = name
    self.employee_number = employee_number

  def printname(self):
    print(self.name, self.employee_number)

#Use the Person class to create an object, and then execute the printname method:

x = employee("John", "Doe")
x.printname()
















