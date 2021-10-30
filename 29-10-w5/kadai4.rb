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

menus.each_with_index do |menu,index|
  print("#{index} ")
  menu.show
end

puts "---------------------"
puts "メニューの番号を選択してください"

order = gets.to_i
order_menu = menus[order]
puts "選択されたメニュー: #{order_menu.foodname}"
puts "お会計は#{order_menu.price}vndです"