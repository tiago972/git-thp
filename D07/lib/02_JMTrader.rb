def day_trader(day_array)
  h={}
  ((day_array.length)-1).times do |i|
    (i+1..((day_array.length)-1)).each do |k|
    h[(i.to_s + "-" + k.to_s).to_sym] = day_array[k]-day_array[i]
    end
  end
  val_max = h.values.max
  if val_max>0
    return h.select{|key, value| value == val_max}
  else
    return "NO-TRADE"
  end
end

#day_trader([12,9,9,8,4])
