class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		k = @seconds
		j = k/60
		k = k - j*60
		k = k.to_i
		if j >= 60
			i = j/60
			j = j - i*60
		end
		j = j.to_i
		i = i.to_i
		if i < 10
			i = "0" + i.to_s
		else
			i = i.to_s
		end
		if j < 10
			j = "0" + j.to_s
		else
			j = j.to_s
		end
		if k < 10
			k = "0" + k.to_s
		else
			k = k.to_s
		end
		i + ":" + j + ":" + k
	end
end