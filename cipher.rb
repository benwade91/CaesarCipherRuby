
def cipher(string, shift)
    alphabet = ("a".."z").to_a
    newStringArr = []
    string.split("").each do |letter|
        if not letter =~ /[A-Za-z]/
            newStringArr.push(letter)
            next
        end
        index = alphabet.find_index(letter) || alphabet.find_index(letter.downcase)
        new_index = index + shift
        if new_index > 25 then new_index -= 26 end
        if letter == letter.upcase then newStringArr.push(alphabet[new_index].upcase)
        else newStringArr.push(alphabet[new_index]) end
    end
    print newStringArr.join()
end

cipher('Hey look, it TOTALLY works!', 1)
