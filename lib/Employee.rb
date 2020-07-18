require "pry"

class Employee

    attr_reader :name
    attr_accessor :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(num)
        self.all.select do |e| 
            if e.salary > num 
                e
            end
        end
    end

    def self.find_by_department(dept)
        self.all.find do |employee|
            if employee.manager.department == dept
                employee
            end
        end
    end

    def tax_bracket
        # sal_over = self.salary + 1000
        # sal_under = self.salary - 1000

        Employee.all.select { |employee| (employee.salary - self.salary).abs < 1000 }
    end

end
