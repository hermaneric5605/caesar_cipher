def caesar_cipher(word, shift)
	letters = ('a'..'z').to_a.concat(('A'..'Z').to_a) # create array of all possible chars
	decoded = ""

	word.each_char do |c| 
		if letters.include?(c)	
			decoded += letters[letters.index(c) - shift]
		else
			decoded += c # adds non-alpha char to the decoded string
		end
	end
	 decoded
end

p caesar_cipher("Deez Nutz", 5)