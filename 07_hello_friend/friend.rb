class Friend
	def greeting(who=false)
		if who
			"Hello, #{who}!"
		else
			"Hello!"
		end
	end
end