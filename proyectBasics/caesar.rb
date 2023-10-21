def caesar_cipher(string, shift)
    alphabet = Array('a'..'z')
    upper_alphabet = Array('A'..'Z')
    cipher = ''
     string.each_char do |char|
        if alphabet.include?(char)
            char = alphabet[(alphabet.index(char) + shift) % alphabet.length]
            cipher += char
        elsif upper_alphabet.include?(char)
            char = upper_alphabet[(upper_alphabet.index(char) + shift) % upper_alphabet.length]
            cipher += char
        elsif char == ' '
            cipher += ' '
        else
            cipher += char
        end
    end
    return cipher
    
end

puts caesar_cipher("Te amo gabriela", 5)