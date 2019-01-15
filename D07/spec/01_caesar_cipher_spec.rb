require_relative '../lib/01_caesar_cipher'
describe "#caesar_cipher" do

  it "1 charactere" do
    expect(caesar_cipher("c",3)).to eq("f")
  end
  it "1 CHARACTERE" do
    expect(caesar_cipher("B",3)).to eq("E")
  end
  it "y" do
    expect(caesar_cipher("y",3)).to eq("b")
  end
  it "." do
    expect(caesar_cipher(". ?",20)).to eq(". ?")
  end
  it "1 word" do
    expect(caesar_cipher("What",5)).to eq("Bmfy")
  end
  it "What a string!" do
    expect(caesar_cipher("What a string!",5)).to eq("Bmfy f xywnsl!")
  end
  it "What a big number!" do
    expect(caesar_cipher("What a big number!",134)).to eq("Alex e fmk ryqfiv!")
  end
end
