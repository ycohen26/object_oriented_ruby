# . Use hashes with symbols to represent the following scenario:
# C.1 - You are the owner of a store that sells items (you decide what specifically). Each item has various properties such as color, price, etc.
# C.2 - Represent 3 items using hashes. Each hash should have the same keys with different values.
# C.3 - Be sure to use symbols for the keys. Try creating hashes using both types of hash symbol syntaxes. (Ruby syntax {:a => 123} vs. “JavaScript” syntax {a: 123}).

# store_item1 = {:name => "Apple", :color => "green", :price => 0.40}
# store_item2 = {:name => "Watermelon", :color => "green", :price => 2.99}
# store_item3 = {:name => "Pear", :color => "green", :price => 0.50}


# store_item1 = {name: "Apple", color: "green", price: => 0.40}
# store_item2 = {name: "Watermelon", color: "green", price: 2.99}
# store_item3 = {name:  "Pear", color: "green", price: 05}:

# ewrite your store items using a class instead of a hash.
# a) Choose which attributes should have “reader” methods and which attributes should have “writer” methods.
# b) Create an instance from your store item class. Use puts statements to print the 3 attributes individually to the terminal.

class Item
  attr_reader :name, :color, :price
  attr_writer :name
  def initialize(option_input)
    @name = option_input[:name]
    @color = option_input[:color]
    @price = option_input[:price]
  end  

  def print_info
    "#{name}, #{color}, #{price}"
  end
end

item1 = Item.new(name: "Apple", color: "green", price: 0.40)

p item1.name
item1.name = "Pear"

p item1.print_info