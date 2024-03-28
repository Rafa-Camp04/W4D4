def my_min(arr)

    smallest_num = 0

    arr.each do |ele|
        smallest_num = ele if smallest_num > ele
    end

    smallest_num
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5