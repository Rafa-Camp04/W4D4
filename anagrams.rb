def first_anagram?(str1, str2)

    two_d_arr = []
    array = str1.split("")

    while two_d_arr.length < (str1.length * str1.length)
        sub_arr = []

        until sub_arr.length == str1.length
            new_char = array.sample
            if !sub_arr.include?(new_char)
            sub_arr << new_char
            end
            
        end
        if !two_d_arr.include?(sub_arr)
        two_d_arr << sub_arr.join("")
        end
    end
    two_d_arr.include?(str2)

end

p first_anagram?("elvis", "lives")