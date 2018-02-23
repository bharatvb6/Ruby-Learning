module RomanModule
	@@roman_values = Hash["M" => 1000, "CM" => 900, "D" => 500, "CD" => 400,  "C" => 100,"XC" => 90, "L" => 50,"XL" => 40, "X" => 10,"IX" => 9, "V" => 5,"IV" => 4, "I" => 1]
	def self.convert_to_roman n
		@roman=""
			@@roman_values.each do |key,value|
				@letter = key
				@value = value
				@roman << @letter*(n/@value)			
				n= n % @value
			end
			return @roman
	end
end

class Fixnum
	def to_roman
		return RomanModule.convert_to_roman(self)
	end
end