class Order
  attr_reader :items
  include ItemContainer
  def initialize
    @items = Array.new
  end

  def place

  end
end