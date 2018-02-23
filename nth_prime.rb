class Prime
	def self.nth input
		if input <=0
			throw raise ArgumentError.new
			return -1

		else
			@Counter=0
			@prime=2
			loop do 
				#puts "counter:::#{@counter}"
				if is_Prime @prime
					@Counter+=1
				end

				if @Counter == input
					return @prime
				end
				@prime+=1
			end
		end
	end


	def self.is_Prime num
		@flag=true
		for counter in 2 .. num-1
			if num%counter ==0
				@flag=false
				break
			end
		end
		return @flag
	end
end

module BookKeeping
	VERSION=1
end











# class Prime
# 	$count = 0
# 	def self.nth input
# 		while $count <= input
# 			(1..100000).select {|x| 
# 									if is_prime(x)
# 										@prime = x
# 										$count += 1
# 									end
# 									}
# 		end
# 	end
# 	def self.is_prime(n)
# 		if (1..n).select {|y| n%y==0}.size==2
# 			return true
# 		end
# 	end
# end
	
# (1..1000000).select{|x| (1..x).select {|y|x%y==0}.size==2}