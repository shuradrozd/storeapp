class Cart
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items.push(item)
  end

  def remove_item
    @items.pop
  end

  def validate
    @items.each {|i| puts "No added price" if i.price.nil?}
  end

  def delete_invalid_items
    @items.delete_if {|item| item.price.nil?}
  end

end


