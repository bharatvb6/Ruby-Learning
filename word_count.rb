class Phrase
	def initialize(input)
		@phrase = input
	end
	def word_count
		@phrase = @phrase.downcase.gsub(/[^0-9A-Za-z' ]/,' ').gsub(/( '|' )/, ' ')
		@words = Array.new
		@words = @phrase.split(" ")
		@frequency =  Hash.new(0)
		for word in @words
			@frequency[word] += 1
		end
		return @frequency
	end

end

module BookKeeping
	VERSION = 1
end


		# @phrase.gsub!(/[^0-9a-zA-Z' ]/,' ')
		# @phrase.gsub!(/( '|' )/, ' ')
		# @sin = @phrase.scan(/'\w+'/).to_s.gsub(/'/,'')
		# @sin.to_s
		# @sin.gsub!(/[^0-9a-zA-Z]/,'')
		# @phrase.gsub!(/'\w+'/,'')
		# @phrase.concat(@sin)
		# # p @sin
		# # p "#{@phrase}"