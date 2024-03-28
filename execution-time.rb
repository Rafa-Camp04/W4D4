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

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

