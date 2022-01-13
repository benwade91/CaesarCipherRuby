
def cipher(string, shift)
    # creates alhpabet array
    alphabet = ("a".."z").to_a
    newStringArr = []
    string.split("").each do |letter|
        # checks if element is not a letter e.g. spaces, number, punctuation
        if not letter =~ /[A-Za-z]/
            newStringArr.push(letter)
            next
        end
        # finds index of letter
        index = alphabet.find_index(letter) || alphabet.find_index(letter.downcase)
        # shifts index
        new_index = index + shift
        # corrects for indices beyond 26 
        if new_index > 25 then new_index -= 26 end
        # adds letter to array using same capitalization as original letter
        if letter == letter.upcase then newStringArr.push(alphabet[new_index].upcase)
        else newStringArr.push(alphabet[new_index]) end
    end
    print newStringArr.join()
end

cipher('Hey look, it TOTALLY works!', 20)