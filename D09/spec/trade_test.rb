require_relative '../lib/trade'

describe "traiding app de ouf" do
	it "check the number of currencies" do
		expect(scrap_money.size).to eq(2109)
	end
	it "start with  bitcoin" do
		expect(scrap_money[0].keys).to eq([:Bitcoin])
	end
	it "end with TWIST" do
		expect(scrap_money[2108].keys).to eq([:TWIST])
	end
end
