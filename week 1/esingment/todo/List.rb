require_relative 'item'
class List
attr_accessor :items
attr_accessor :name

  def initialize(name, items = [])
    @items = items
    @name = name

  end

  
  def add(new_item)
    @items << new_item
  end

  def complete_at!(index)
  @items[index].done = true
  end

  def display

   puts "list : #{@name}"
   @items.each do |item|
      if items.done?
       puts " -[x] #{item.name}"
      else 
        puts "[ ] #{item.name}"
      end
    end
end  

def display_done
    puts "Done  :"
    @items.each do |item|
      if item.done?
        puts "[x] #{item.name}"
        end
      end
   end
    
 def display_undone   
    puts " unDone :" 
    @items.each do |item|
      if item.done?
        puts "[ ] #{item.name}"
        end
      end
   end

#      b = List.new("Today's list", [List.new("first"), List.new("second")])

# puts b.List.new
