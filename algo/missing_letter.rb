# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)

  char = range.split("")
  letters = (char[0]..char[1]).to_a
  letters.each do |char|
    if char.include?(char) 
      return char
    elsif not letters.include?(char)
      return char
    else char == letters
      return nil
    end
  end

  # letters = range.split("")
  # full_letters = (letters[0]..letters[-1]).to_a
  # full_letters.each do |letter|
  #   if letters.include?(letter)
  #   elsif not letters.include?(letter)
  #     return letter
  #   end
  #   if letters == full_letters
  #     return nil
  #   end
  # end

end

# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end
