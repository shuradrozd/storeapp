require_relative 'item_container'
require_relative 'cart'
require_relative 'order'
require_relative 'item'
require_relative 'virtual_item'
require_relative 'real_item'

# cart = Cart.new
#  cart.add_item(Item.new)
# cart.add_item(Item.new)
# cart.validate
# cart.delete_invalid_items
item1 = VirtualItem.new({:price => 101, :weight => 15, :name => "alex"})
item2 = RealItem.new({:price => 101, :weight => 15, :name => "alex"})
item3 = RealItem.new({:price => 10, :weight => 208, :name => "diswatcher"})
cart = Cart.new
cart.add_item(item1)
cart.add_item(item2)
cart.add_item(item3)
puts cart.items.size
# cart.remove_item
# p cart.items.size
#
# order = Order.new
# order.add_item(item1)
# order.add_item(item2)
# order.add_item(item3)
# order.remove_item
# p order.items.size
# puts order.count_valid_items

# p item1.respond_to?(:weight)
# p item2.respond_to?(:weight)

# puts item1.price
# puts item1.real_price