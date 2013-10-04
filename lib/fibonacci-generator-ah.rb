	def fibonacci(num)
		arr = [1, 1]
		loop do
			arr << (arr[(arr.length - 2)] + arr.last)
			break if arr.length > num
		end
		return arr.take(num)
	end