class FoodPrice
  attr_accessor :foodname
  attr_accessor :price
  def initialize(foodname, price)
    self.foodname = foodname
    self.price = price
  end
  def get_total_price(count)
    total = self.price*count
    if count >= 3
      total -= 10000
    end
    puts "#{self.foodname} #{total}vnd"
  end
end

food = FoodPrice.new("Pho",30000)
food.get_total_price(3)
  