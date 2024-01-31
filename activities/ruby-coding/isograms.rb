def is_isogram? (string)
  seen_char = []

  string.each_char do |char|
    if seen_char.include?(char.downcase)
      return false
    else
      seen_char.push(char.downcase)
    end
  end

  true
end

puts is_isogram?('Dermatoglyphics')
puts is_isogram?('aba')
puts is_isogram?('moOse')
