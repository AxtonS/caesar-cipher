# frozen_string_literal: true

# encodes a given string by a given shift value
class CaesarCipher
  attr_reader :alphabet, :string, :shift

  def initialize(string = 'caesar cipher', integer = 0)
    @alphabet = ('a'..'z').to_a
    @string = string.split('')
    @shift = integer
  end

  def replace(letter)
    @alphabet.each_with_index do |value, index|
      next if letter != value

      new_letter = index + @shift
      new_letter -= 26 while new_letter > 25
      new_letter += 26 while new_letter.negative?
      return alphabet[new_letter]
    end
    letter
  end

  def uppercase?(letter)
    return true if ('A'..'Z').to_a.include?(letter)

    return false if ('a'..'z').to_a.include?(letter)
  end

  def encode
    new_string = []
    @string.each do |letter|
      if uppercase?(letter)
        new_string.push(replace(letter.downcase).upcase)
        next
      end
      new_string.push(replace(letter))
    end
    new_string.join('')
  end
end
