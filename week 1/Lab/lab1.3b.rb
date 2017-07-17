class Item
   attr_accessor :item
   attr_writer :done

    def initialize(item)
       @item = item
    end
    
     def done
       @done 
 end
end
  item=Item.new(item)
  
  item.done=  true
  item.done= false

puts item.done 
