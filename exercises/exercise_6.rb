require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
Store.has_many :employees
Employee.belongs_to :store

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Aaron", last_name: "Sham", hourly_rate: 100)
@store1.employees.create(first_name: "Jenny", last_name: "Jung", hourly_rate: 80)
@store1.employees.create(first_name: "Ned", last_name: "Stark", hourly_rate: 200)
@store2.employees.create(first_name: "Jaime", last_name: "Lannister", hourly_rate: 300)
@store2.employees.create(first_name: "Dhaenarys", last_name: "Targaryen", hourly_rate: 250)
@store2.employees.create(first_name: "Oberon", last_name: "Martell", hourly_rate: 150)
@store2.employees.create(first_name: "Theon", last_name: "Greyjoy", hourly_rate: 0)