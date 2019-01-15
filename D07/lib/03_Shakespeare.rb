def word_counter(word,dico)
  h={}
  word.downcase!
  dico.each do |d|
    i = 0
    word.split.map do |w|
      if w.include?(d)
        i+=1
      end
    end
    if i>0
      h[d.to_sym] = i
    end
  end
  return h
end
