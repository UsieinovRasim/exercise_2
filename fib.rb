index = 1
arr = [1, 2]
while index < 100
  index = arr.last(2).sum
  break if index > 100

  arr << index
end

puts arr.to_s
