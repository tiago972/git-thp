def multiples(number)
  if (number.is_a? Integer) && (number > 0)
    return (0...number).select {|i| i%3==0 || i%5==0}.inject(:+)
  else
    return "Please..."
  end
end
