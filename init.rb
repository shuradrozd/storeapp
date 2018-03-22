require_relative 'string'
require_relative 'item_container'
require_relative 'item'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'antique'
require_relative 'cart'
require_relative 'order'

# cart = Cart.new
#  cart.add_item(Item.new)
# cart.add_item(Item.new)
# cart.validate
# cart.delete_invalid_items

@items = []
# @items << RealItem.new({:price => 101, :weight => 150, :name => "car"})
# @items << RealItem.new({:price => 101, :weight => 15, :name => "kettle"})
# @items << RealItem.new({:price => 1000, :weight => 208, :name => "diswatsher"})

cart = Cart.new("alex")
cart.add_item RealItem.new({:price => 101, :weight => 150, :name => "car"})
cart.add_item RealItem.new({:price => 1101, :weight => 150, :name => "car"})
cart.add_item RealItem.new({:price => 1021, :weight => 150, :name => "kettle"})

# p cart.all_cars()
# p cart.all_kettles()
p cart.kind_of?(Cart)
#
# cart.remove_itemcart = Cart.new
# cart.add_item(item1)
# cart.add_item(item2)
# cart.add_item(item3)
# puts cart.items.size
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