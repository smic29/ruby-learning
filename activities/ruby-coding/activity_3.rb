# arr_one = [34, 15, 88, 2]
# arr_two = [34, -345, -1, 100]
# arr_three = [2, 4, 5, 6, 3]

# first_num = arr_two[0]
# arr_two.each do |num|
#   if num < first_num
#     first_num = num
#   end
# end

# def find_smallest_int(arr)
#  min_int = arr[0]
#  arr.each {|num| min_int = num if num < min_int}
#  min_int
# end

# p find_smallest_int(arr_three)

require 'rspec'

def find_smallest_int(arr)
  min_int = arr[0]
   arr.each {|num| min_int = num if num < min_int}
   min_int
end

describe 'find_smallest_int' do
  it 'returns the smallest integer given an array' do
    arr = [34, 15, 88, 2]
    expect(find_smallest_int(arr)).to eq(2)

    arr = [25, 8, -8, 1]
    expect(find_smallest_int(arr)).to eq(-8)
  end
end
