class CaesarCipher
  attr_reader :alphabet, :string, :shift

  def initialize(string = "caesar cipher", shift = 0)
    @alphabet = ("a".."z").to_a
    @string = string.chars
    @shift = shift
  end

  def replace(letter)
    index = @alphabet.index(letter)
    return letter unless index
    new_index = (index + @shift) % 26
    @alphabet[new_index]
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
