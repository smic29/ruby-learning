def letter_count(string)
  result_hash = {}

  string.chars.each do |char|
    symbol = char.to_sym
    key = result_hash[symbol]

    if key.nil?
      result_hash.store(symbol, 1)
      next
    end

    result_hash[symbol] = key + 1 # result_hash[symbol] += 1 also works. This is just preference, I guess.
  end

  result_hash
end

puts letter_count('arithmetics')
puts letter_count('cat')
puts letter_count('mouse')
puts letter_count('mississippi')
