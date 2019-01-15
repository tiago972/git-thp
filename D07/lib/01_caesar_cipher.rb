def caesar_cipher(word,n)
  n = n % 26
  a=""
  word.each_char do |w|
    w=w.ord
    if w.between?(65,90-n)
      w+=n
    elsif w.between?(91-n,90)
      w+=n-26
    elsif w.between?(97,122-n)
      w+=n
    elsif w.between?(123-n,122)
      w+=n-26
    end
    a += w.chr
  end
  return a
end
