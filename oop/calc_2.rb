# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

module Operation

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class SimpleCalculator
  include Operation 
  
end

class FancyCalculator

  include Operation

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

puts "Testing fancy_calculator"
puts

simple_calculator = SimpleCalculator.new
fancy_calculator = FancyCalculator.new


result = simple_calculator.add(3,5)
puts "SimpleCalculator returned.."
puts result

if result == 8
  puts "PASS"
else 
  puts "FAIL"
end

result = simple_calculator.subtract(18,12)
puts "SimpleCalculator returned.."
puts result

if result == 6
  puts "PASS"
else 
  puts "FAIL"
end

result = simple_calculator.multiply(4,5)
puts "SimpleCalculator returned.."
puts result

if result == 16
  puts "PASS"
else
  puts "FAIL"
end

result = simple_calculator.divide(10,2)
puts "SimpleCalculator returned.."
puts result

if result == 5
  puts "PASS"
else
  puts "FAIL"
end

result = fancy_calculator.square_root(4)
puts "FancyCalculator returned.."
puts result

if result == 2
  puts "PASS"
else
  puts "FAIL"
end

