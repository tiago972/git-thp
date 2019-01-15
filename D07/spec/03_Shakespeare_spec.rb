require_relative '../lib/03_Shakespeare'

local_dir = File.expand_path('../', __FILE__)
$LOAD_PATH.unshift(local_dir)
f = File.open('shakespear.txt', "r")
s = f.read

d1 = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
d2 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
describe "#word_counter" do
	it "ex1" do
		expect(word_counter("below", d1)).to eq({:below=>1, :low=>1})
	end

	it "ex2" do
		expect(word_counter("Howdy partner, sit down! How's it going?", d1)).to eq({:down=>1, :how=>2, :howdy=>1, :go=>1, :going=>1, :it=>2, :i=> 3, :own=>1, :part=>1, :partner=>1, :sit=>1})
	end

	it "ex3" do
		expect(word_counter("zruerhgps", d1)).to eq({})
	end

	it "ex4" do
		expect(word_counter(s, d2)).to eq({})
	end
	f.close
end
