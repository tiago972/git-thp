require_relative '../lib/00_multiples'

describe "#multiples" do

  it "sum the multiples of 3 and 5 below the number" do
    expect(multiples(3)).to eq(0)
  end
  it "sum the multiples of 3 and 5 below the number" do
    expect(multiples(10)).to eq(23)
  end
  it "sum the multiples of 3 and 5 below the number" do
    expect(multiples(11)).to eq(33)
  end
  it "sum the multiples of 3 and 5 below the number" do
    expect(multiples(20)).to eq(78)
  end
  it "sum the multiples of 3 and 5 below the number" do
    expect(multiples(200)).to eq(9168)
  end
  it "WTF" do
    expect(multiples("aaa")).to eq("Please...")
  end
  it "WTF" do
    expect(multiples(-5)).to eq("Please...")
  end
  it "WTF" do
    expect(multiples(1.35)).to eq("Please...")
  end
end
