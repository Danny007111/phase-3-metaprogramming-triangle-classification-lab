class Triangle
  # write code here
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    valid_triangle
    if one == two && two == three
      :equilateral
    elsif one == two || one == three || two == three
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle_with_no_negative_sides?
    [one, two, three].all? {|num| num > 0}
  end

  def valid_triangle_with_valid_sides?
    one + three > two && two + three > one && one + two > three
  end

  def valid_triangle
    raise TriangleError unless valid_triangle_with_no_negative_sides? && valid_triangle_with_valid_sides?
  end

  class TriangleError < StandardError
  end

end
