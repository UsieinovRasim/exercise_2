letters = %w[a e i o u y]

hash = {}
('a'..'z').each.with_index(1) do |letter, i|
  hash.merge!({ letter.to_s => i }) if letters.include?(letter)
end

puts hash
