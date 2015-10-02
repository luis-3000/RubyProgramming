
"""
Author: Jose Luis Castillo
Date 7 /19/2015:
This Ruby application is a text analyzer
It will provide these basic features:
	* Character count
	* Character count (excluding spaces)
	* Line count
	* Word count
	* Sentence count
	* Paragraph count
	* Average number of words per Sentence
	* Average number of sentences per Paragraph

Tasks needed to complete this project:
	1. Load in a file containing the text or document to analyzer.
	2. As the file is loaded line by line, a count of how many lines there were needs
		to b ketp.
	3. The text needs to be put in  a string and then the length needs to be measured
		to get the character count.
	4. All white spaces need to be temporarily removed and the length of the resulting 
		string needs to be measured in order to get the character count without the 
		spaces.
	5. All the white spaces need to be split out to find out how many words there are .
	6. Also, we need to split on full stops to find out  how many sentences there are.
	7. Next, we split on double newlines to find out how many paragraphs there are.
	8. Finally, we perform calculations to work out the averages.


"""

text = %q{Lost Angeles has some of the nicest weather in the country.}
stop_words = %w{the a by on for of are with just but and to the my I has some in}

words = text.scan(/\w+/)
key_words = words.select { |word| !stop_words.include? (word)}
puts key_words.join(' ')