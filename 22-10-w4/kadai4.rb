print '学生の人数を入力してください > '
input = gets.to_i
num = [*1..input]
names = []
num.each do |i|
  puts "#{i}番目の学生の名前は何ですか?"
  puts '名前 > '
  name = gets.chomp
  names.push(name)
end
index = 1
puts '-------------名簿---------------'
names.each do |name|
  puts "+ #{index}番目の学生は#{name}です"
  index +=1
end
puts '--------------------------------'
