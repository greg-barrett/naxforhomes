module ProjectsHelper
  def active(num)
    num < 1 ? "active" : ""
  end

  def place_it(num)
    num % 2 == 0 ? "right": "left"
  end
end
