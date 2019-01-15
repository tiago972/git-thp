require_relative "../lib/exo_01"

describe "the function should do" do
	it "test_THP" do
		expect(sum_of_3_or_5_multiples(11)).to eq(33)
	end
	it "char" do
		expect(sum_of_3_or_5_multiples("qdfds")).to eq("Nique ta mère")
	end
	it "neg" do
		expect(sum_of_3_or_5_multiples(-5)).to eq("Nique ta mère")
	end
end
