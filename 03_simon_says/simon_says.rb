def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string,n=2)
	newstring = ""
	(n-1).times do
		newstring = newstring + string + " "
	end
	newstring = newstring + string
end

def start_of_word(string,n)
	string[0..n-1]
end

def first_word(string)
	string.split(" ")[0]
end

def titleize(string)
	array = string.split(" ")
	array[0].capitalize!
	array.each do |word|
		unless word == "and" || word == "the" || word == "over" || word == "of" || word == "a" 
			word.capitalize!
		end
	end
	array.join(" ")
end