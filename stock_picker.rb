#DOES NOT WORK YET

def stock_picker (days)
	sell = days.index(days.max)
	buy = days.index(days.min)
	return [buy, sell] if buy < sell
end


puts stock_picker ([3,6,9,15,8,6,1,10, 1])