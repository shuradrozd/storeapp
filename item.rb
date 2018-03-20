class Item
  attr_reader :price
  def initialize(price)
    @price = price
  end

# def price
#   @price
# end

# def price=(value)
#   @price = value
# end
end

item1 = Item.new(105)

# item1.price = 10
puts item1.price