class Triangle

  attr_accessor :a, :b, :c
  
  def initialize a, b, c 
    @a = a
    @b = b
    @c = c
  end




  def kind 
    if (self.a > 0 && self.b > 0 && self.c > 0) && (self.a + self.b > self.c && self.a + self.c > self.b && self.b + self.c > self.a)
      if self.a == self.b && self.b == self.c 
        :equilateral
      elsif self.a == self.b || self.a == self.c || self.b == self.c
        :isosceles
      else
        :scalene 
      end
    else
      raise TriangleError
    end

  end


  class TriangleError < StandardError
    def message 
      "Error: not a valid triangle"
    end
  end

end
