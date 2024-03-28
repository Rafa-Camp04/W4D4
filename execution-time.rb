require 'byebug'

# time complexity O(n^2)
def my_min(arr) 

    arr.each_with_index do |ele1, i| 
        min = true                                         #[ 0, 3, 5, 4, -5, 10, 1, 90 ]
        arr.each_with_index do |ele2, j|      #[ 0, 3, 5, 4, -5, 10, 1, 90 ]
            if i == j
                next
            elsif ele1 > ele2
                min = false 
            end
        end
        return ele1 if min
    end

end

# time_complexity O(n)
def my_min(arr)

    smallest_num = 0

    arr.each do |ele|
        smallest_num = ele if smallest_num > ele
    end

    smallest_num
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# time complexity: O(n^3)
# def largest_contiguous_subsum(arr)
#     array = []
#     (0...arr.length).each do |start_idx|            # n^2
#         (start_idx...arr.length).each do |end_idx|  
#             array << arr[start_idx..end_idx]
#         end
#     end
#     sum = []
#     array.each do |sub_arr|                         # n
#         sum << sub_arr.sum
#     end
#     return sum.max
# end

def largest_contiguous_subsum(arr)
    # debugger

    current_sum = 0    # -5
    largest_sum = arr[0]    # -5

    (0...arr.length).each_with_index do |i|
        current_sum += arr[i]           # -5 + -1 => -6 
        if current_sum > largest_sum    # if -6 > -5
            largest_sum = current_sum   
        elsif current_sum < 0           # if -6 < 0
            current_sum = 0             # current = 0
            next
        end
    end
    largest_sum
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])