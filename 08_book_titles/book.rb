class Book
	attr_reader :title

	def title=(new_title)
		array = new_title.split(" ")
		array[0].capitalize!
		array.each do |word|
			if word == "and" || word == "or" || word == "the" || word == "a" || word == "an" || word == "in" || word == "of"
				word
			else
				word.capitalize!
			end
		end
		@title = array.join(" ")
	end
end