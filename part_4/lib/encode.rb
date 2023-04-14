def encode(plaintext, key)
  p "this moment plaintext = #{plaintext} and key = #{key}"
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  p "cipher = #{cipher}"
  ciphertext_chars = plaintext.chars.map do |char|
  p "cipher.find_index(char) is #{cipher.find_index(char)}"
  p "without .chr the ouput is #{65 + cipher.find_index(char)} " 
  p  "with .chr the output is #{(65 + cipher.find_index(char)).chr}"
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  return plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"

puts encode("the", "secretkey")
