class Item
   attr_accessor :name
   attr_accessor :done
  def initialize(name, done = false)
       @name = name
       @done = done

  end
  
  def done?
      @done
  end
  
  def mark_done!
      @done=true

  end
  
  def display
     @name
  end
  
  # - [x] Today I'm false
  
  def self.new_from_line(line)
      name = line[6..-1]
    done = line[3] == "x"
    Item.new(name, done)
       
  end
end
