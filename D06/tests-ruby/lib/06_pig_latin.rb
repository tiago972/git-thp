def translate(phrase)
	phrase = phrase.split
	phrase.each_with_index do |word, i|
		if word.include? "qu"
			phrase[i] = word.byteslice(word.index(/qu/)+2,word.length) + word.byteslice(0, word.index(/qu/)+2) + "ay"
		else
			phrase[i] = word.byteslice(word.index(/[aeiou]/),word.length) + word.byteslice(0, word.index(/[aeiou]/)) + "ay"
		end
	end

	return phrase.join(' ')
end
