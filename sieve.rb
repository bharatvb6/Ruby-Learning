require 'prime'
class Sieve
	def initialize(num)
		@num = num
	end

	def primes
		primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= @num}
		return primes
	end
end