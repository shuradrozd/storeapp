class Cart
  include ItemContainer
  attr_reader :items

  class ItemNotSupported < StandardError;  end

  UNSUPPORTED_ITEMS = [AntiqueItem, VirtualItem]

  def initialize(owner)
    @items = []
    @owner = owner
  end

  def save_to_file
    File.open("#{@owner}_cart.txt", "w") do |f|
      @items.each do |i|
        raise ItemNotSupported  if UNSUPPORTED_ITEMS.include?(i.class)
        f.puts i
      end
      end
  end

  def read_from_file
    return unless File.exists?("#{@owner}_cart.txt")
    File.readlines("#{@owner}_cart.txt").each {|i| @items << i.to_real_item}
    @items.uniq!
  end

end


