def fix_the_string(str)
    continue = true
    while continue
        continue = false
        (str.size - 1).times do |i|
            if (str[i] != str[i + 1]) && (str[i].upcase == str[i + 1].upcase)
                str = str[0...i] + str[i + 2..-1]
                continue = true
                break
            end
        end
    end
    str
end
