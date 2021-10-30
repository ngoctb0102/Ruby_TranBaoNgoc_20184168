class Menu
  attr_accessor :foodname
  attr_accessor :price
  def initialize(foodname, price)
    self.foodname = foodname
    self.price = price
  end
  def show
    puts "#{self.foodname} #{self.price}"
  end
end

menu1 = Menu.new("Pho", 30000)
menu2 = Menu.new("Bun cha", 40000)
menu3 = Menu.new("Banh mi", 20000)

menus = []
menus.push(menu1)
menus.push(menu2)
menus.push(menu3)

menus.each do |menu|
  menu.show
end
  



  