print '学生䛾人数を入力してください > '
input = gets.to_i
num = [*1..input]
names = []
num.each do |i|
  hash = {}
  puts "#{i}番目の学生の名前䛿何ですか?"
  puts '名前 > '
  hash[:name] = gets.chomp
  puts "#{i}番目の学生番号は何ですか?"
  puts '学生番号 > '
  hash[:num] = gets.to_i
  names.push(hash)
end
puts '-------------名簿---------------'
names.each do |name|
  puts "学生番号 #{name[:num]} - 名前#{name[:name]}です"
end
puts '--------------------------------'