def disemvowel(text)
  # text.gsub(/[aeiou]/i,'')

  # without using .gsub method

  vowels = /[aeiou]/i
  modified_text = [];
  text.each_char do |char|
    modified_text << char unless char =~ vowels
  end

  modified_text.join()
end

puts disemvowel('This website is for losers LOL!')
