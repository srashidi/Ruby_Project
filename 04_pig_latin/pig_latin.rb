def translate(string)
	array = string.split(" ")
	n=0
	array.each do |word|
		if word.chars.first != "a" && word.chars.first != "e" && word.chars.first != "i" && word.chars.first != "o" && word.chars.first != "u"
			if array[n][0..1] == "qu"
				array[n] = array[n] + "qu"
				array[n][0..1] = ""
			else
				array[n] = array[n] + array[n].chars[0]
				array[n][0] = ""
			end
			while array[n].chars[0] != "a" && array[n].chars[0] != "e" && array[n].chars[0] != "i" && array[n].chars[0] != "o" && array[n].chars[0] != "u" && array[n].chars[0] != "y"
				if array[n][0..1] == "qu"
					array[n] = array[n] + "qu"
					array[n][0..1] = ""
				else
					array[n] = array[n] + array[n].chars[0]
					array[n][0] = ""
				end
			end
		end
		array[n] = array[n] + "ay"
		if word == word.capitalize
			array[n] = array[n].downcase.capitalize
		end
		if word.chars.last =~ /\W+/
			array[n].gsub!(/\W+/,"")
			array[n] = array[n] + word.chars.last
		end
		n += 1
	end
	array.join(" ")
end