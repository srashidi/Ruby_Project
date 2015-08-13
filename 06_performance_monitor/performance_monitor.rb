def measure(x=1)
	beginning = Time.now
	x.times do
		yield
	end
	total = (Time.now - beginning)/x
end