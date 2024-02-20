
def encode(input)
  vowels = ['a','e','i','o','u']
  new_word = []

  input.each_char { |x| vowels.include?(x) ? new_word << vowels.find_index(x) + 1 : new_word << x }

  puts new_word.join
end

def decode(string)
  vowels = ['a','e','i','o','u']
  new_word = []

  string.each_char { |x| x.to_i > 0 && x.to_i < 6 ? new_word << vowels[x.to_i - 1] : new_word << x }
  puts new_word.join
end

encode("hello")
decode("h3 th2r2")
