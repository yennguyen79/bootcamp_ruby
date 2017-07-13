# Define numbers to be an array of numbers from 1 to 10.

# 2. Use the each method of numbers to print numbers from 1 to 10.

# 3. Use the each method on an array of numbers from 1 to 10 and only print numbers that greater than 5.

# 4. Add 11 to the end of the original array numbers

# 5. How do you return the last element in an array? How do you reverse the order of the array so that you get [11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]?

# 6. Create an array big_numbers with numbers 100, 200, 300, 400

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.each do |e|
  puts "element: #{e}"
end 

puts "only print > 5"
numbers.each do |e| 
  if e > 5
    puts e 
  end 
end

puts " add 11 to numbers"
numbers << 11 
puts "number is now :#{numbers}"
number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
puts " last element : #{numbers.last}"
puts "reverse: #{numbers.reverse}"

big_numbers = [100, 200, 300, 400]
all_numbers = numbers + big_numbers
puts "all numbers is now  :#{all_numbers}"
puts " #{all_numbers.sort.reverse}"

def full_name(first_name, middle_name, last_name)
  puts "full_name"
  first_name + " " + middle_name + " " + last_name
end 


puts full_name("yen", "ngoc hoang", "nguyen")
puts full_name("Eric" , " " ,"Shim" )

def say_hi(name)
  "long time no see " + name
end
puts say_hi("yen")
puts say_hi("harley")
puts say_hi("loi")


puts "Hello World no parentheses"
puts("Hello World from puts")

def add(number_list)
     number_list.inject(:+)
end

def add(a, b, c, d)
   a + b + c + d 
 end
puts add(1,2,3,4)



