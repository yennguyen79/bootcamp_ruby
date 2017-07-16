class List
attr_accessor :items
attr_accessor :name

  def initialize(name, items = [ ])
    @items = items
    @name = name

  end

  def items
     @items 
  end 
  
  def name
    @name
  end
  
  def add(items)
    @items << items
  def display
    "display #{@name}"
  end  
end
   b = List.new("Today's list", [List.new("first"), List.new("second")])

puts b.items