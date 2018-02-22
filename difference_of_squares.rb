class Squares
	def initialize(number)
		@number = number
	end

	def square_of_sum
		@sum=0
		for i in 1..@number
			@sum = @sum+i
		end
		return @sum*@sum
	end

	def sum_of_squares
		@sum_of_squares=0
		@squares = (1..@number).collect { |i| @squares = i*i }
		#p @squares
		for i in @squares
			@sum_of_squares = @sum_of_squares + i
		end
		return @sum_of_squares
	end

	def difference
		@difference
		@difference = square_of_sum - sum_of_squares
		return	@difference
	end
end