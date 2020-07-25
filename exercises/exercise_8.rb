require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

class Employee
  before_create :set_password

  private
    def set_password
      self.password = "password"
    end
end

tyrion = @store1.employees.create(first_name: "Tyrion", last_name: "Lannister", hourly_rate: 60)
puts tyrion.password