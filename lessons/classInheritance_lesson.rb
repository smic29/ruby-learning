# Class inheritance - shared properties and behaviors across all subclasses
# Module / Interface inheritance - group of related behaviors
#                                - mixins are like contracts ( Enumerable, Comparabler )
#                                - also used for namespacing to aviod name conflicts/collisions

# DRY - Don't Repeat Yourself .... WET = Write Everything Twice

module OvertimePayable
  def calculate_overtime(number_of_hours)
    base_salary * number_of_hours
  end
end

class Employee
  attr_accessor :first_name, :last_name, :age, :performance_rating, :base_salary

  def initialize(first_name, last_name, age, performance_rating=0, base_salary=10000)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @performance_rating = performance_rating
    @base_salary = base_salary
  end

  def resign
    puts "Rendering 30 days..."
  end
end

class SoftwareEngineer < Employee
  include OvertimePayable
  def write_code
    puts 'Writing code...'
  end
end

class BackendEngineer < SoftwareEngineer
  def write_code
    super
    puts 'BACKEND CODE MOTHERF...'
  end
end

class QASpecialist < Employee
  include OvertimePayable
end

class Manager < Employee
  def evaluate_employee(employee, performance_rating)
    puts "Evaluating employee..."
    check_employee_history
    employee.performance_rating = performance_rating
  end

  private

  def check_employee_history
    puts 'Checking employee records...'
  end
end

class CTO < Employee
  attr_accessor :equity
  def initialize(first_name, last_name, age, performance_rating=0, base_salary, equity)
    super(first_name, last_name, age, performance_rating, base_salary)
    @equity = equity
  end
end

### Test the code here

spicy = SoftwareEngineer.new('Spicy', 'Sibulo', 32, 70, 50000)
elon = Manager.new('Elon', 'Musk', 45, 95)
john  = CTO.new('John', 'Young', 25, 90, 30)
abdul = BackendEngineer.new('Abdul', "M", 32)

elon.evaluate_employee(spicy, 99)
