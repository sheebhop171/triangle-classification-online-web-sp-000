class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
     if @a == @b && @b == @c
       :equilateral
     elsif @a == @b || @b == @c|| @c == @a
       :isosceles
     else
       :scalene
     end
  end

  def valid
    if a <= 0 || b <= 0 || c <= 0
      begin
      raise TriangleError
      end
    else (a + b) <= c || (a + c) <= b || (b + c) <= a
      begin
      raise TriangleError
    end
    end
  end

  class TriangleError < StandardError
  end
end
