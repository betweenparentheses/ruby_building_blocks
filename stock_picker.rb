#DOES NOT WORK YET

def stock_picker (days)
  #does the fast easy cases first
	sell = days.index(days.max)
	buy = days.index(days.min)
	return [buy, sell] if buy < sell
	
	greatest_return = 0
	(0..((days.size)-1)).each do |first_day|
    (first_day..(days.size-1)).each do |second_day|
			if (days[second_day] - days[first_day]) > greatest_return
				greatest_return = days[second_day] - days[first_day]
				sell = second_day
				buy = first_day
			end
		end
	end
  [buy, sell]
end


array = stock_picker ([17,3,6,9,15,8,6,1,10,1])

puts "[Buy day, sell day] = [#{array[0]}, #{array[1]}]"
