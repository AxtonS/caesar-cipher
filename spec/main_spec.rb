# frozen_string_literal: true

require './lib/main'

describe CaesarCipher do
  describe '#alphabet' do
    it 'returns the alphabet as an array' do
      cipher = CaesarCipher.new
      expect(cipher.alphabet).to eql(%w[a b c d e f g h i j k l m n o p q r s t u v w x y z])
    end
  end

  describe '#string' do
    it 'is a string' do
      cipher = CaesarCipher.new
      expect(cipher.string).to be_a_kind_of String
    end
  end

  describe '#integer' do
    it 'is an integer' do
      cipher = CaesarCipher.new
      expect(cipher.integer).to be_a_kind_of Integer
    end
  end
end
