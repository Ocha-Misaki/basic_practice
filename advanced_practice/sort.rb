def sum(targets)
  sum = 0
  targets.each do |target|
    sum += target
  end
  sum
end

def average(targets)
  sum = sum(targets)
  sum / targets.length
end

def sort_by_max_value(targets)
  targets.each_with_index do |_, i|
    break if i + 1 >= targets.length
    if targets[i] > targets[i + 1]
      targets[i], targets[i + 1] = targets[i + 1], targets[i]
    end
  end
  targets
end

def sort_by_min_value(targets)
  targets.each_with_index do |_, i|
    break if i + 1 >= targets.length
    if targets[i] < targets[i + 1]
      targets[i], targets[i + 1] = targets[i + 1], targets[i]
    end
  end
  targets
end

def max_value(targets)
  result = sort_by_max_value(targets)
  result.last
end


def min_value(targets)
  result = sort_by_min_value(targets)
  result.last
end

def sort_by_max_value_array(targets)
  result = sort_by_max_value(targets)
  result.inspect
end

def bubble_sort_by_max_value(targets)
  length = targets.length
  (0...length).each do |i|
    (0...(length - i - 1)).each do |j|
      if targets[j] < targets[j + 1]
        targets[j], targets[j + 1] = targets[j + 1], targets[j]
      end
    end
  end
  targets
end


targets = [20, 31, 42, 13, 5, 38]
puts "合計: #{sum(targets)}"
puts "平均: #{average(targets)}"
puts "最大値: #{max_value(targets)}"
puts "最小値: #{min_value(targets)}"
puts "大きい準: #{bubble_sort_by_max_value(targets)}"
