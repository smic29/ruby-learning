def disemvowel(text)
  text.gsub(/[aeiou]/i,'')


end

puts disemvowel('This website is for losers LOL!')
