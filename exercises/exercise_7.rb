require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200}
end

class Store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  def no_apparel
    if record.mens_apparel == false && record.womens_apparel == false
      errors.add("One of the apparels must be true")
    end
  end
end

surrey = Store.create(name: "S", annual_revenue: 224000, mens_apparel: false, womens_apparel: false)
asdf = Store.create(name: "asdf")
if surrey.errors.any?
  surrey.errors.full_messages.each {|msg| puts msg}
end