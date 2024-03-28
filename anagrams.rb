def first_anagram?(str1, str2)

    two_d_arr = []
    array = str1.split("")

    (str1.length * str1.length).times do
        sub_arr = []

        until sub_arr.length == str1.length do 
            new_char = array.sample
            if !sub_arr.include?(new_char)
            sub_arr << new_char
            end
            
        end

        two_d_arr << sub_arr.join("")
    end

    two_d_arr
end

p first_anagram?("elvis", "lives")