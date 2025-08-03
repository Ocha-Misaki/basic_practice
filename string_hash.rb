def string_hash(text)
  targets = text.split(' ')
  targets.each_with_object(Hash.new(0)) do |target, hash|
    hash[target] += 1
  end
end

puts '文字を入力してください'
text = gets.chomp.to_s
puts string_hash(text)
