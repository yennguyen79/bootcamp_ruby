puts "Task 1:"

def total(numbers)
  sum = 0 
  
  numbers.each do |e|
  sum = sum + e
  end
  sum
end

def test_total(numbers, expected)
  result = total(numbers)
  if result == expected
    puts "CORRECT! total(#{numbers.inspect}) = #{result}"
  else
    puts "WRONG! total(#{numbers.inspect}) is #{result}? Why not #{result}? :'("
  end
end

# now when you click Run, you'll see if your total method is correct or not
test_total([], 0)
test_total([123], 123)
test_total([1, 2, 3], 6)
test_total([10, -10, 99], 99)
test_total((1..10).to_a, 55)

###########################
# define a square_total method that add the square of each number in an array
###########################
puts "\nTask 2:"


[1,2,3]
def square_total(numbers)
   sum = 0
  numbers.each do |number|
    sum = sum + number*number
  end
  sum
end


def test_square_total(numbers, expected)
  
  result = square_total(numbers)
  
  if result == expected
    puts "CORRECT! square_total(#{numbers.inspect}) = #{result}"
  else
    puts "WRONG! square_total(#{numbers.inspect}) is #{result} instead of #{expected}"
  end
end

test_square_total([], 0)
test_square_total([1], 1)
test_square_total([1, 2], 1 * 1 + 2 * 2)
test_square_total([1, -1, 9], 1 * 1 + (-1) * (-1) + 9 * 9)
test_square_total((1..10).to_a, 385)

###########################
puts "\nTask 3: using .map and .each together"
###########################

# Task 3A: can you give an example when you can use .map and .each together? Check out my example:

puts "My 6-8 poem:"
["roses are red, violets are blue", "map is easy but it makes me dizzy"].map {|sentence| sentence.capitalize}.each_with_index do |line, index|
  puts "Line #{index + 1} :: #{line} :: #{line.split.length} words"
end

# Do you know you can use map.with_index too?
# each_with_index is actually each.with_index
# do don't have map_with_index, but we can use map.with_index

puts "Singer Ranking:"
ranking = ["Adele", "Taylor", "Bieber"].map.with_index {|s, index| "#{index+1} - #{s}"}
# now ranking is an array of strings with the ranking inside it.
p ranking
# we can just print all
puts ranking
# remember the difference between puts array vs p array? If not, just ask :)

# Task 3B: can you provide an example that uses .map.with_index ?
hello = ["nguyen", "ngoc", "hoang","yen"].map.with_index {|s, index| "#{index+1} - #{s}"}
puts hello 
