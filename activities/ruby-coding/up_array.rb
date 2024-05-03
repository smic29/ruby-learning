def up_array(arr)
  # result_arr = []
  # arr.each do |int|
  #   return nil unless int.is_a? Integer
  #   return nil if int >= 10

  #   new_num = int + 1 > 9 ? 0 : int + 1
  #   result_arr << new_num
  # end

  # result_arr
  arr.select { |int| int.is_a?(Integer) && int < 10 }.map { |int| int + 1 > 9 ? 0 : int + 1 }
end

p up_array([2, 3, 9])
p up_array([4, 3, 2, 5])
p up_array([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
p up_array(['corn'])
p up_array([11, 2, 3, 29])
p up_array(['one', 2, 'three', 4, 11, 0])
