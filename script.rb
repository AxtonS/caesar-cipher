def caesar_cipher  
  puts "Please enter your message:"
  string = gets.chomp
  puts "Please enter a value you'd like to shift your message by:"
  shift = gets.chomp.to_i
  
  def shift(letter, shift)
    alphabet = ('a'..'z').to_a
    alphabet.each_with_index do |value, index|
      if letter == value
        new_letter = index + shift
        while new_letter > 25
          new_letter -= 26
        end
        while new_letter < 0
          new_letter += 26
        end
      return alphabet[new_letter]
      end
    end
  end  
  
  caesar_array = []
  array_string = string.split("")
  array_string.each do |letter|
    if ('a'..'z') === letter
      caesar_array.push(shift(letter, shift))
    elsif ('A'..'Z') === letter
      caesar_array.push(shift(letter.downcase, shift).upcase)
    else
      caesar_array.push(letter)
    end
  end
  caesar_array = caesar_array.join("")
  puts caesar_array
end
caesar_cipher