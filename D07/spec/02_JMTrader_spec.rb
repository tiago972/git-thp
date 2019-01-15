require_relative '../lib/02_JMTrader'
describe "#JMTrader" do

  it "trades" do
    expect(day_trader([6,5,9,12,4])).to eq({:"1-3"=>7})
  end
  it "trades" do
    expect(day_trader([9,10,12,7,10,4])).to eq({:"0-2"=>3, :"3-4"=>3})
  end
  it "not-trades" do
    expect(day_trader([12,9,9,8,4])).to eq("NO-TRADE")
  end
end
