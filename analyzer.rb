=begin

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
=end
filename = "text.txt"
lines = File.readlines(filename)
line_count = lines.size
text = lines.join

puts "#{line_count} lines"

#Counting characters
total_characters = text.length
puts "#{total_characters}  characters"

total_characters_nospaces = text.gsub(/\s+/, '').length
puts "#{total_characters_nospaces} characters excluding spaces"

#Counting words
word_count = text.split.length
puts "#{word_count} words"

# count sentences
sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"

# paragraphs count
paragraph_count  = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

# calculating averages
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"

puts "#{word_count / sentence_count} words per sentence (average)"

# Percentage of useful words
# A quick way to declare an array of stop words
stop_words = %w{the a by on for of are with jut but and to the my I has some in}
