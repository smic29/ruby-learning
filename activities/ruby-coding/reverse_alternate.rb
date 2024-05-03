def reverse_alternate(string)
  # string.split.each_with_index do |word, index|
  #   word.reverse! if index.odd?
  # end.join(' ')
  string.split.each_with_index { |word, index| word.reverse! if index.odd? }.join(' ')
end

p reverse_alternate('Did it work?')
p reverse_alternate('maybe it did work?')
p reverse_alternate('A Song of Ice and Fire will be completed before I die')
