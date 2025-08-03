def fizz_buzz(num)
  if num % 15 == 0
    'FizzBuzz'
  elsif num % 3 == 0
    'Fizz'
  elsif num % 5 == 0
    'Buzz'
  else
    num.to_s
  end
end

puts '数字を入力してください'
num = gets.chomp.to_i

if num.positive?
  targets = (1..num).to_a
  targets.each do |target|
    puts fizz_buzz(target)
  end
else
  puts fizz_buzz(1)
end
