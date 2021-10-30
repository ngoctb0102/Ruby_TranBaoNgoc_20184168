class Menu
  attr_accessor :foodname
  attr_accessor :price
  def initialize(foodname, price)
    self.foodname = foodname
    self.price = price
  end
  def show
    puts "#{self.foodname} #{self.price}vnd"
  end
end

class Drink < Menu
  attr_accessor :size
  def initialize(foodname, price, size)
    super(foodname, price)
    self.size = size
  end
  def show
    puts "#{self.foodname} #{self.price}vnd (#{self.size}サイズ)"
  end
end

menu1 = Menu.new("Pho", 30000)
menu2 = Menu.new("Bun cha", 40000)
menu3 = Menu.new("Banh mi", 20000)
drink1 = Drink.new("Tra",5000,"S")
drink2 = Drink.new("Tra",10000,"M")

menus = []
menus.push(menu1,menu2,menu3,drink1,drink2)

menus.each do |menu|
  menu.show
end

