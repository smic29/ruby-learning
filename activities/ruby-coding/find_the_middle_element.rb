def gimme(arr)
  max = arr.max
  min = arr.min

  arr.each_with_index { |x,y| p y if x < max && x > min}
end

gimme([2, 3, 1])
gimme([5, 10, 14])
