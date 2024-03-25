def reverse(string)
  result = []

  string.chars.each { |char| result.unshift(char) }

  p result.join
end

reverse('hello')
reverse('world')
