print("input the year: ")
year = gets.to_i
if year < 1896
  puts "#{year}年にオリンピック䛿まだありません"
elsif year % 4 == 0
  if year == 1916 || year == 1940 || year == 1944 || year == 2020
    puts "#{year}年にオリンピック䛿まだありません"
  else
    puts "#{year}年䛿夏季オリンピックが開催されました"
  end
else
  puts "#{year}年䛿夏季オリンピックイヤーで䛿ありません"
end