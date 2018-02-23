class Year
	def self.leap?(yr)
		if (yr%4 == 0) and (yr%100!=0 or yr%400==0)
			return true
		else
			return false
		end
	end
end