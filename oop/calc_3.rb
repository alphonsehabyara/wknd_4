# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module BasicCalculations

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

  include BasicCalculations

end

class FancyCalculator

  include BasicCalculations

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

puts "Testing fancy_calculator"
puts

simple_calculator = SimpleCalculator.new
fancy_calculator = FancyCalculator.new
whiz_bang_calculator = WhizBangCalculator.new


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

result = whiz_bang_calculator.square_root(64)
puts "WhizBangCalculator returned.."
puts result

if result == 8
  puts "PASS"
else
  puts "FAIL"
end