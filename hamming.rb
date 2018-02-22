class Hamming
	def self.compute(str1,str2)

		@hamming_number = 0 
		if str1 and str2 					#verifying whether the  inputs are Null
			if str1.length == str2.length 	#verifying whether lenght of two inputs is equal or not		
				for i in 0 .. str1.length			#looping inputs to find hamming number
					if str1[i] != str2[i]
						@hamming_number += 1
					end
				end
				return @hamming_number
			else
				throw raise ArgumentError.new	#throws error if inputs are of different lengths
			end
		else
			return @hamming_number
		end
	end
end


# class Hamming
# 	def self.compute(string1,string2)
		
# 		@string_array1 = Array.new
# 		@string_array2 = Array.new
# 		@hamming_number = 0

# 		if !string1.empty? and !string2.empty? and (string1.length == string2.length)

# 			@string_array1 = string1.split('')
# 			@string_array2 = string2.split('')

# 			for i in 0..@string_array1.size
# 	      		if @string_array1[i] != @string_array2[i]
# 	        		@hamming_number += 1
# 	      		end
# 	    	end
		
# 			return @hamming_number

# 		elsif string1.length != string2.length

# 			throw raise ArgumentError.new
			
# 		else
# 			return @hamming_number
# 		end
# 	end
# end