def reverser
	array = yield.split(" ")
	newstring = ""
	array.each do |word|
		i = -1
		n = word.length
		n.times do
			newstring = newstring + word[i]
			i -= 1
		end
		newstring = newstring + " "
	end
	newstring[-1] = ""
	newstring
end

def adder(a=1)
	yield + a
end

def repeater(x=1)
	x.times do
		yield
	end
end