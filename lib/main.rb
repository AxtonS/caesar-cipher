class CaesarCipher
  attr_reader :alphabet, :string, :shift

  def initialize(string = "caesar cipher", shift = 0)
    @alphabet = ("a".."z").to_a
    @string = string.chars
    @shift = shift
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
    ("A".."Z").to_a.include?(letter) ? true : false
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
    new_string.join
  end
end
