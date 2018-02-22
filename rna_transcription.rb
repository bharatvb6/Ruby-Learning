class Complement
	def self.of_dna(rna)
		rna_transcription = Hash["G" => "C","C" => "G", "T" => "A","A" => "U"]
		@transcripted_rna = ""
		for i in  0 .. rna.length-1
			if rna_transcription.has_key? (rna[i])
				@transcripted_rna += rna_transcription[rna[i]]
			else
				return ""
			end
		end
		return @transcripted_rna
		# transcripted_rna = Array.new
		# if rna
		#  	keys = rna_transcription.keys
		#  	for i in 0 ..rna.length
		#  		keys.each do |j|
		# 	 		if rna[i] == j
		#  				transcripted_rna << rna_transcription[j] 
		#  			end
		#  		end
		#  	end
		#  	if transcripted_rna.length == rna.length
		#  		return transcripted_rna.join
		#  	else
		#  		return ""
		#  	end
		# end

	end
end

