class Pangram

	def self.pangram?(phrase)
		@alphabets = Array('a'..'z')
		@alphabets_count = 0
		if phrase
			for i in @alphabets
				if phrase.downcase.include? i
					@alphabets_count += 1
				end
			end
			if @alphabets_count == 26
				return true
			else
				return false
			end
		end
	end
end