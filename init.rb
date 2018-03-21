require_relative 'cart'
require_relative 'item'
require_relative 'virtual_item'
require_relative 'real_item'

cart = Cart.new
# cart.add_item(Item.new)
# cart.add_item(Item.new)
cart.validate
cart.delete_invalid_items
item1 = VirtualItem.new({:price => 10, :weight => 15, :name => "alex"})
item2 = RealItem.new({:weight => 15, :name => "alex"})

# cart.add_item(item1)
# cart.add_item(item2)
# p cart.items
# # item.info {|i| puts i}
# # cart.remove_item
# cart.delete_invalid_items
# p cart.items
#
# p item1.respond_to?(:weight)
# p item2.respond_to?(:weight)

puts item1.price
puts item1.real_price