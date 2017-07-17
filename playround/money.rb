class Money
    attr_reader :pictuer

    def initalize
        @material = paper
        @color = blue 
    end
    def pictuer=(value)
      @pictuer = value
    end
    def number 
        @number = 100
    end
    def bieutuong=(value)
        @bieutuong = value
    end
end

 material = Money.new
 puts material
material.pictuer = "hoangyen"
#bieutuong = $$$$
puts material.pictuer

