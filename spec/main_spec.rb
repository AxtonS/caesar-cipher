require "./lib/main"

describe CaesarCipher do
  describe "#alphabet" do
    it "returns an array of the alphabet" do
      expect(subject.alphabet).to eql(%w[a b c d e f g h i j k l m n o p
                                         q r s t u v w x y z])
    end
  end

  describe "#string" do
    context "splits string into array" do
      subject { CaesarCipher.new(string) }

      let(:string) { "example" }

      it "when 'example'" do
        expect(subject.string).to eql(%w[e x a m p l e])
      end
    end
  end

  describe "#shift" do
    context "when 5" do
      subject { CaesarCipher.new("test", 5) }

      it "when 5" do
        expect(subject.shift).to eql(5)
      end
    end
  end

  describe "#uppercase?" do
    it "returns true if 'A'" do
      expect(subject.uppercase?("A")).to be true
    end

    it "returns false if 'z'" do
      expect(subject.uppercase?("z")).to be false
    end
  end

  describe "#replace" do
    context "when @shift is 1" do
      subject { CaesarCipher.new("test", 1) }

      it "return 'b' when 'a'" do
        expect(subject.replace("a")).to eql("b")
      end

      it "returns 'a' when 'z'" do
        expect(subject.replace("z")).to eql("a")
      end
    end
  end

  describe "#encode" do
    context "with 'example' and shift 1" do
      subject { CaesarCipher.new("example", 1) }

      it "returns 'fybnqmf'" do
        expect(subject.encode).to eql("fybnqmf")
      end
    end

    context "with 'UPPERCASE' and shift 60" do
      subject { CaesarCipher.new("UPPERCASE", 60) }

      it "returns 'CXXMZKIAM'" do
        expect(subject.encode).to eql("CXXMZKIAM")
      end
    end

    context "with 'MixCase' and shift -42" do
      subject { CaesarCipher.new("MixCase", -42) }

      it "returns 'WshMkco'" do
        expect(subject.encode).to eql("WshMkco")
      end
    end
  end
end
