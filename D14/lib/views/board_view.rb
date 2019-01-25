class BoardView

  def line(letter,a1,a2,a3)
    puts " "*29 + "|" + " "*9 + "|" + " "*9
    puts " "*14 + letter + " "*9 + a1 + " "*4 + "|" + " "*4 + a2 + " "*4 + "|" + " "*4 + a3 + " "*4
    puts " "*29 + "|" + " "*9 + "|" + " "*9
  end

  def separate
    puts " "*20 + "-"*29
  end

  def bottom
    print "\n" + " "*24 + "1" + " "*9 + "2" + " "*9 + "3" + "\n"*4
  end

  def top
    system "clear"
    print "\n"*4
  end
end
