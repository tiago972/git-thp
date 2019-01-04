sum = 0
array = [-20, 20, 0, -4]
array.each do |a| 
	if a >= 0
		sum+=a
	end
end
puts "#{sum}"
