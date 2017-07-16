
require_relative 'list'
require_relative 'item'

class Todo
  attr_accessor :line , :list

    def initialize(file_name = "todo.md")
      @file_name = file_name
      @new_list = List.new("Today")
    end
    
    def list
      @new_list 
    end 

    def load_data
       @line = File.read("todo.md").split("\n")
       @line.each do |line|

          @new_list.add(Item.new(line[6..-1],line[3] == "x"))
        end

     end

    def add(my_item)
      @new_list.add(Item.new(my_item))
    end

    def show_all
      @new_list.display
    end  

    def show_done
      @new_list.display_done
    end


    def show_undone 
      @new_list.display_undone
    end

    
      

      


@todo = Todo.new
@todo.list
@todo.load_data
@todo.add
@todo.show_all
@todo.show_done
@todo.show_undone
