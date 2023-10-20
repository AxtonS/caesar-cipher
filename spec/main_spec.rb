# frozen_string_literal: true

require "./lib/main.rb"
describe CaesarCipher do
  cipher = CaesarCipher.new
  describe "#alphabet" do
    it "should return an array of the alphabet" do
      expect(cipher.alphabet).to eql(['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q',
    'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'])
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
end
