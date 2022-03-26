def fix_the_string(str)
    stack = []

    str.each_char do |char|
        if !stack.empty? && char != stack.last && char.upcase == stack.last.upcase
            stack.pop
        else
            stack.push(char)
        end
    end

    result = ''
    result = stack.pop + result until stack.empty?

    result
end
