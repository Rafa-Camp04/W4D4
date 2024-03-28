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
def largest_contiguous_subsum(arr)
    array = []
    (0...arr.length).each do |start_idx|            # n^2
        (start_idx...arr.length).each do |end_idx|  
            array << arr[start_idx..end_idx]
        end
    end
    sum = []
    array.each do |sub_arr|                         # n
        sum << sub_arr.sum
    end
    return sum.max
end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

# possible sub-sums
[5]           # => 5
[5, 3]        # => 8 --> we want this one
[5, 3, -7]    # => 1
[3]           # => 3
[3, -7]       # => -4
[-7]          # => -7
