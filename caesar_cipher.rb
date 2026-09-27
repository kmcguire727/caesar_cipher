=begin
  Intended Functionality => Cipher is a right-shift cipher
    caesar_cipher("What a string!", 5)
      => "Bmfy f xywnsl!"

  Validate answers here: https://cryptii.com/pipes/caesar-cipher/
=end

ALPHABET = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

def caesar_cipher(string, key)
  # Establish plain text alphabet
  # Establish cipher alphabet by popping key # of alphas off and appending
  # Find indecies of plain text characters
  # Compile cipher message using indecies
  
  cipher_alphabet = Array.new(ALPHABET)
  cipher_msg = ""

  # Strategy: pop values off and pushing them into the front of an array
  key.times do
    cipher_alphabet.push(cipher_alphabet.shift)
  end
  
  # For each character in the string, check if the character is in the downcase alphabet
  # if yes => convert to ciphered glyph
  # if no => its possible its still a character but just uppercase, so try again with donwcase
  # if STILL no => its a space or a special character, just keep it
  string.each_char do |char|
    if ALPHABET.include?(char)
      plain_text_index = ALPHABET.index(char)
      cipher_char = cipher_alphabet[plain_text_index]
      cipher_msg += cipher_char
    elsif ALPHABET.include?(char.downcase)
      plain_text_index = ALPHABET.index(char.downcase)
      cipher_char = cipher_alphabet[plain_text_index]
      cipher_msg += cipher_char.upcase
    else
      cipher_msg += char
    end
  end

  puts cipher_msg
  return cipher_msg

end

caesar_cipher("What a string!", 5)
caesar_cipher("We are what we repeatedly do. Excellence, then, is not an act, but a habit.", 14)