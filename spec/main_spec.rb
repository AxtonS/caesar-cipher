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
    it 'is an array of letters' do
      cipher = CaesarCipher.new
      expect(cipher.string).to be_a_kind_of Array
    end
  end

  describe '#shift' do
    it 'is an integer' do
      cipher = CaesarCipher.new
      expect(cipher.shift).to be_a_kind_of Integer
    end
  end

  describe '#replace' do
    it 'shifts letter by 1' do
      cipher = CaesarCipher.new('a', 1)
      expect(cipher.replace('a')).to eql('b')
    end

    it 'wraps around the alphabet' do
      cipher = CaesarCipher.new('a', 27)
      expect(cipher.replace('a')).to eql('b')
    end

    it 'wraps around the alphabet backwards' do
      cipher = CaesarCipher.new('a', -25)
      expect(cipher.replace('a')).to eql('b')
    end
  end

  describe '#uppercase?' do
    it 'returns true when letter is uppercase' do
      cipher = CaesarCipher.new
      expect(cipher.uppercase?('A')).to eql(true)
    end

    it 'returns false when letter is lowercase' do
      cipher = CaesarCipher.new
      expect(cipher.uppercase?('a')).to eql(false)
    end
  end

  describe '#encode' do
    it 'encodes string by shifting each letter by 1' do
      cipher = CaesarCipher.new('abc', 1)
      expect(cipher.encode).to eql('bcd')
    end

    it 'encodes string with correct case' do
      cipher = CaesarCipher.new('aBc', 1)
      expect(cipher.encode).to eql('bCd')
    end

    it 'encodes string with wrap' do
      cipher = CaesarCipher.new('abc', 27)
      expect(cipher.encode).to eql('bcd')
    end
  end
end
