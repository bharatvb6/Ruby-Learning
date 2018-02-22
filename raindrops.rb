require 'prime'

class Raindrops
	@raindrop_sounds = Hash[3 => "Pling", 5 => "Plang", 7 => "Plong"]
	def self.factors(num)
		num.prime_division.map(&:first)
	end
	def self.convert(input)
		@sound = ""
		@factors = Array.new
		@factors = Raindrops.factors(input)
		#p "factors of #{input} is #{@factors} and #{@raindrop_sounds[3]}"
		for i in 0..@factors.length-1
			if @raindrop_sounds.has_key? (@factors[i])
				@sound+=@raindrop_sounds[@factors[i]]
			end
		end
		if @sound.empty?
			return "#{input}"
		else
			return @sound
		end
	end
end