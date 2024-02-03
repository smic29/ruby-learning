def is_isogram? (string)
  seen_char = []

  string.each_char do |char|
    return false if seen_char.include? char.downcase
    seen_char << char.downcase
  end

  true
end

puts is_isogram?('Dermatoglyphics')
puts is_isogram?('aba')
puts is_isogram?('moOse')
