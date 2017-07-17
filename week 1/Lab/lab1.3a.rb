 ###################
# Task 1: define a class Flower that takes a name and a color
# - add a writer method to set price for that flower
###################

# NOTE: don't use attr_* stuff yet

# class Flower
#   # your code here
#   # ...
# end

# # TEST:

# my_flower = Flower.new("roses", "red")
# my_flower.price = 10

# your_flower = Flower.new("violets", "blue")
# your_flower.price = 11

# # add your own tests
class Flower
    # attr_reader :name
    # attr_writer :name
    attr_accessor :name
    # attr_reader :color
    # attr_writer :color
    attr_accessor :color
    attr_accessor :price
    #(attr_accessor :name, :color, :price)
    def initialize(name, color, price = nil)
        @name = name  
        @color = color
        @price = price
    end
#task 2
    def to_sentence
     @name + " are " + @color
  end 
    # def price=(value)
    #   @price = value
    # end
    # def price
    #   @price
end
    #  Flower.new("hong", "xanh")
     your_flower=Flower.new("hong", "xanh")
     puts your_flower
     # Flower.new("violets", "tim")
     your_flower1=Flower.new("violets", "tim", 18)
     puts your_flower1
     your_flower.price=16
     puts your_flower.price
     your_flower3=Flower.new("hong", "xanh", 13)
     puts your_flower3
     puts your_flower3.price
# # Task 2: add a to_sentence method inside the class
# # NOTE: you can "open" the class again and write def to_sentence inside it
# ###################


# my_flower.to_sentence # => "roses are red"
# your_flower.to_sentence # => "violets are blue"


     my_flower=Flower.new("roese", "red")
     puts my_flower.to_sentence
     puts 

# Task 3: write a compare method that takes another flower and compare
###################

class Flower
  def compare(hoa_khac)
    if @price < hoa_khac.price
      "Hey I am cheaper!"
    else "Yup, I am more expensive."
    end
  end
end
 
# TEST:
puts your_flower3.compare(your_flower1) 
your_flower.compare(my_flower) # => "Yup, I am more expensive."



class Bouquet
  def initialize(flowers = [])
    # your code here
   
  end
  
  def add(flower)
    # your code here
    # HINT: this updates your instance variable
    
    # puts "Great. Added #{flower.name} to the bouquet."
  end
  
  def flowers
    # your code here
    # HINT: this is a reader; return the instance variable
  end
end


my_bouquet = Bouquet.new # this will set the list of flowers to be empty
puts "Flowers that I have: #{my_bouquet.flowers}" # this will print:"Flowers that I have: []"

# now let's add more flowers to our bouquet
my_bouquet.add(my_flower)
my_bouquet.add(your_flower)

# now check that you have two flowers
puts "Flowers now: #{my_bouquet.flowers}"

# OF COURSE, we can start a new bouquet with more than 0 flowers

coderschool_bouquet = Bouquet.new([my_flower, your_flower])