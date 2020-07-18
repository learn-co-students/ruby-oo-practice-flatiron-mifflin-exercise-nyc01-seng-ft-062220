require "pry"
require_relative "lib/Employee.rb"
require_relative "lib/Manager.rb"

m1 = Manager.new("Alex", "Marketing", 26)
m2 = Manager.new("Vlad", "Engineering", 29)

e1 = Employee.new("Alex", 90000, m2)
e2 = Employee.new("Jeff", 100000, m1)
e3 = Employee.new("Paul", 90500, m2)

m1.employees
m1.hire_employees("Jerry", 50000)

Manager.all_departments

Manager.average_age

Employee.paid_over(50000)

Employee.find_by_department("Marketing")

e1.tax_bracket
e3.tax_bracket

binding.pry