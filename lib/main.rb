# frozen_string_literal: true

# encodes a given string by a given shift value
class CaesarCipher
  attr_reader :alphabet, :string, :integer

  def initialize(string = 'caesar cipher', integer = 0)
    @alphabet = ('a'..'z').to_a
    @string = string
    @integer = integer
  end
end

# def caesar_cipher
#   puts "Please enter a message you'd like to encrypt:"
#   string = gets.chomp
#   puts "Please enter a number you'd like to shift your message by:"
#   shift = Integer(gets) rescue false
#   while shift == false
#     puts "Please try again to enter a valid whole number:"
#     shift = Integer(gets) rescue false
#   end
#   def shift(letter, shift)
#     alphabet = ('a'..'z').to_a
#     alphabet.each_with_index do |value, index|
#       if letter == value
#         new_letter = index + shift
#         while new_letter > 25
#           new_letter -= 26
#         end
#         while new_letter < 0
#           new_letter += 26
#         end
#       return alphabet[new_letter]
#       end
#     end
#   end
#
#   caesar_array = []
#   array_string = string.split("")
#   array_string.each do |letter|
#     if ('a'..'z') === letter
#       caesar_array.push(shift(letter, shift))
#     elsif ('A'..'Z') === letter
#       caesar_array.push(shift(letter.downcase, shift).upcase)
#     else
#       caesar_array.push(letter)
#     end
#   end
#   caesar_array = caesar_array.join("")
#   puts "\nHere is your newly encrypted message:"
#   puts caesar_array
# end
# caesar_cipher
# puts "\nTry to copy this message and use the opposite shift value to decrypt
# \nFor example if you used a shift value of 5, try to use -5 on the encrypt
# message!"
