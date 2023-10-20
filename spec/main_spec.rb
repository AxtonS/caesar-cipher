# frozen_string_literal: true

require "./lib/main.rb"
describe CaesarCipher do
  subject { CaesarCipher.new  }
  describe "#alphabet" do
    it "should return an array of the alphabet" do
      expect(subject.alphabet).to eql(['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
      'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'])
    end
  end

  describe "#string" do
    context "splits string into array" do
      subject { CaesarCipher.new(string) }
      let(:string) { "example" }
      it "when 'example'" do
        expect(subject.string).to eql(['e', 'x', 'a', 'm', 'p', 'l', 'e'])
      end
    end
  end

  describe "#shift" do
    context "when 5" do
      subject { CaesarCipher.new('test', 5)}
      it "when 5" do
        expect(subject.shift).to eql(5)
      end
    end
  end

  describe "#uppercase?" do
    it "should return true if 'A'" do
      expect(subject.uppercase?('A')).to be true
    end

    it "should return false if 'z'" do
      expect(subject.uppercase?('z')).to be false
    end
  end
end
