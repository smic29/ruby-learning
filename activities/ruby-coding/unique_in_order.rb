def unique_in_order(item)
  check = item.instance_of?(String) ? item.each_char : item
  new_char = []

  check.each do |char|
    is_same_as_last?(new_char, char)
  end

  new_char
end

def is_same_as_last?(arr, elem)
  if arr.empty? || arr.last != elem
    arr << elem
  end
end

print "#{unique_in_order('AAAABBBCCDAABBB')}\n"
print "#{unique_in_order('ABBCcAD')}\n"
print "#{unique_in_order([1,2,2,3,3])}\n"
