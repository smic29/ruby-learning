def unique_in_order(item)
  new_char = []

  if item.is_a?(String)
    item.each_char do |char|
      if new_char.empty? || new_char.last != char
        new_char << char
      end
    end
  else
    item.each do |char|
      if new_char.empty? || new_char.last != char
        new_char << char
      end
    end
  end

  new_char
end

print "#{unique_in_order('AAAABBBCCDAABBB')}\n"
print "#{unique_in_order('ABBCcAD')}\n"
print "#{unique_in_order([1,2,2,3,3])}\n"
