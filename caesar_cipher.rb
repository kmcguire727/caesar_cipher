=begin
  Intended Functionality => Cipher is a right-shift cipher
    caesar_cipher("What a string!", 5)
      => "Bmfy f xywnsl!"
  Validate answers here or through the /spec/caesar_cipher_spec examples: https://cryptii.com/pipes/caesar-cipher/
=end

ALPHABET = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

def caesar_cipher(string, key)
  # Jobs to be done of this program:
  # Establish plain text alphabet for comparison
  # Establish cipher alphabet (done by shifting key # of chars off the front of a COPIED alphabet and pushing onto the array in the order removed
  # Find indecies of plain text characters
  # Compile cipher message using those indecies
  # If the character needed to be downcase'd to match, upcase it in the cipher to match original message punctuation
  
  cipher_alphabet = Array.new(ALPHABET) # program will not function if cipher_alphabet just points to the ALPHABET. It must be a copy since it will be mutated in the coming lines.
  cipher_msg = ""

  # Strategy: shift values off the front and push them onto the array in that order
  key.times do
    cipher_alphabet.push(cipher_alphabet.shift)
  end
  
  # For each character in the string, check if the character is in the downcase alphabet
  # if yes => convert to ciphered glyph
  # if no => its possible its still a character but just uppercase, so try again with donwcase
  # if STILL no => its a space or a special character, just keep it
  string.each_char do |char|
    if ALPHABET.include?(char)  # it's a lowercase character
      plain_text_index = ALPHABET.index(char)
      cipher_char = cipher_alphabet[plain_text_index]
      cipher_msg += cipher_char
    elsif ALPHABET.include?(char.downcase)  # it's an uppercase letter
      plain_text_index = ALPHABET.index(char.downcase)
      cipher_char = cipher_alphabet[plain_text_index]
      cipher_msg += cipher_char.upcase
    else  # it's a special character
      cipher_msg += char
    end
  end

  # puts cipher_msg   # uncomment line if testing the program or using it standalone
  return cipher_msg
end