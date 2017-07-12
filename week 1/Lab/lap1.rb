#  singers = ["My Tam", "Ho Ngoc Ha", "Hoang Yen"]
# puts singers[0]
# puts singers[-1]
# puts singers[1]
# puts singers[2]
# puts singers.first
# puts singers.last 
# def the_middle(s)
#          if s.length.even?
#       s[s.length/2 - 1] + s[s.length/2]
#     else
#       s[s.length/2]
#     end
# end
# puts  the_middle(singers)
# hello

rating = {"My Tam" => 9, "Ho Ngoc Ha" => 5, "Hoang Yen" =>4}

puts " rating is #{rating}"
p rating.to_a
@rating = rating
def better_singer(yen_one, ngoc_two)
 if  @rating [yen_one] > @rating [ngoc_two]
     yen_one
    else ngoc_two
    end
   end   
puts "better_singer is  #{@rating}#{better_singer("My Tam", "Ho Ngoc Ha")}"
puts "better_singer is  #{better_singer("My Tam", "Ho Ngoc Ha")}"

def total_rating(some_rating)
 some_rating = rating 
end
puts "total_rating #{rating.values}"

def total_rating(a, b, c)
  a + b + c 
end
puts "total rating is #{total_rating(9, 5, 4)}"

def total_raking(rating)
 sum = 0
 rating.values.each do |each|
   sum = sum + each
 end
end

puts "Total raking: "
puts total_raking(rating)