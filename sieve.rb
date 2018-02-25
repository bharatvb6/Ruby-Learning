class Sieve
	def initialize(num)
		@num =num
		@prime_array = (2..@num).to_a
		@prime_check = Array[2,3,5,7,9]
	end

	def primes
		for i in 0..@prime_array.length
			for j in i+1..@prime_array.length
				if @prime_array[i] 
					if @prime_array[j] and @prime_array[j] % @prime_array[i] == 0
						@prime_array[j] = nil
					end
				end
			end
		end
		@prime_array = @prime_array.compact
		return @prime_array
	end
end




# require 'prime'
# class Sieve
# 	def initialize(num)
# 		@num = num
# 	end

# 	def primes
# 		primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= @num}
# 		return primes
# 	end
# end