def unique_in_order(item)
  check = item.is_a?(String) ? item.each_char : item
  new_char = []

  check.each do |char|
    if is_same_as_last?(new_char, char)
      new_char << char
    end
  end

  new_char
end

def is_same_as_last?(arr, elem)
  arr.empty? || arr.last != elem
end

print "#{unique_in_order('AAAABBBCCDAABBB')}\n"
print "#{unique_in_order('ABBCcAD')}\n"
print "#{unique_in_order([1,2,2,3,3])}\n"
