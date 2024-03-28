require 'byebug'

def my_min(arr) 

    arr.each_with_index do |ele1, i|        #[ 0, 3, 5, 4, -5, 10, 1, 90 ]
        arr.each_with_index do |ele2, j|      #[ 0, 3, 5, 4, -5, 10, 1, 90 ]
            if ele1 < ele2 
                return ele1
                # debugger
            end
        end

    end

end


# def my_min(arr)

#     smallest_num = 0

#     arr.each do |ele|
#         smallest_num = ele if smallest_num > ele
#     end

#     smallest_num
# end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5

# time_complexity O(n)

