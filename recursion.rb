def recursion(num)
  targets = (1..num).to_a
  targets.sum
end

puts '数字を入力してください'
num = gets.chomp.to_i
puts "入力: #{num}"
puts "出力: #{recursion(num)}"
