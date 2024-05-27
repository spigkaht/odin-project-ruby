require 'caesar_cipher'

describe "#caesar_cipher" do
  it "should return a message if given an empty string" do
    expect(caesar_cipher("", -5)).to be_a String
  end

  it "should return a message if given something that is NOT a string" do
    expect(caesar_cipher("42", -5)).to be_a String
  end

  it "should return a correct string according to the caeser cipher" do
    expect(caesar_cipher("This is a string", -5)).to eq "Ocdn dn v nomdib"
  end

  it "should keep punctuation intact" do
    expect(caesar_cipher("Why it's me! Hello.", -5)).to eq "Rct do'n hz! Czggj."
  end
end
