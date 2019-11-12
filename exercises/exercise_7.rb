require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'


puts "Exercise 7"
puts "----------"

puts "Store name?"
input_name = $stdin.gets.chomp
@new_store = Store.new(name: input_name)
unless @new_store.valid?
  @new_store.errors.each do |attribute, message|
    puts "#{attribute}:  #{message}"
  end
end
