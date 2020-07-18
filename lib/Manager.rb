class Manager

    attr_reader :name
    attr_accessor :department, :age

    @@all = []

    def initialize(name, department, age)
       @name = name
       @department = department
       @age = age
       @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select { |e| e.manager == self }
    end

    def hire_employees(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.find { |dept| dept.department }
    end

    def self.average_age
        total_ages = self.all.sum { |m| m.age }
        managers = self.all.count
        (total_ages / managers).to_f
    end

end
