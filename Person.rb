
class Person
	attr_accessor :name, :age, :gender
end

person_instance = Person.new
person_instance.name = "Robert"
person_instance.age = 52
person_instance.gender = "male"

puts person_instance.name
puts person_instance.age
puts person_instance.gender

class Pet
	attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
end

class Dog < Pet
	def bark
		puts "woof, woof!"
	end
end

class Snake < Pet
	attr_accessor :length
end

snake = Snake.new
snake.name = "Sammy"
snake.length = 500
lassie = Dog.new
lassie.name = "Lassie"
lassie.age = 20


puts snake.name, " the Sssssnake"
puts snake.length

puts lassie.name, " the dog"
puts lassie.age
puts "Callind a method inside the Dog class:    "
puts lassie.bark

puts "Lassie belongs to class: "
puts  lassie.class

x = { "a" => 1, "b" => 2 }
x.each { |key, value| puts "#{key} equals #{value}" }

people = {
			'fred' => {
						'name' => 'Fred Elliot',
						'age' => 63,
						'gender' => 'male',
						'favorite painters' => ['Monet', 'Constable', 'Da Vinci']
					 } ,
			'janet' => {
						'name' => 'Janet S Porter',
						'age' => 55,
						'gender' => 'female',
						'favorite painters' => ['Monet', 'Constable', 'Da Vinci']
					  }
		 }

puts "Printing elements in this coplex hash data structure: "
puts "Fred's age: ", people['fred']['age']
puts "Janet's gender: ", people['janet']['gender']
puts "Janet's Hash table info: ", people['janet'].inspect		 

age  = 10
puts "You're too yound to use this system " if age < 18

age = 39
if age < 18
	puts "You're too young to use this system!!!"
else
	print "You are: ", age, " years old."
	puts "\nYou can use this system"
end

age = 39
type = age < 18 ? "child" : "adult"
puts "You are a " + type

puts "\nif/ ifelse example: "


fruit = "luisgrape"
if fruit == "orange"
	color = "orange"
elif fruit == "apple"
	color =  "green"
elif fruit == "banana"
	color = "yellor"
else
	color = "unkown"
end

puts "fruit: " + fruit + " color: " + color


puts "\nCase block: "

fruit = "orange"
case fruit
	when "orange"
		color = "orange"
	when "apple"
		color = "green"
	when "bananan"
		color = "yellor"
	else
		color = "unkown"
end

puts "fruit: "  + fruit + " color: " + color

puts "\n'While' example: "
x = 1
while x < 100
	puts x 
	x = x * 2
end

puts "\n'Until' example: "

x = 1
until x > 99
	puts x
	x = x * 2
end

puts "\n Each - do example: x.each do |y|"
x = [1, 2, 3]
x.each do |y|
	puts y
end

puts "code blocks: "

def each_vowel(&code_block)
	%w{a e i o u}.each { |vowel| code_block.call(vowel) }
end

each_vowel { |vowel| puts vowel }


puts "Time manipulation: "

class Fixnum
	def seconds
		self
	end

	def minutes
		self * 60
	end

	def hours
		self * 60 * 60
	end

	def days
		self * 60 * 60 * 24
	end
end

puts Time.now
puts Time.now + 10.minutes
puts Time.now + 16.hours
puts Time.now - 7.days	


rice_on_square = 1
64.times do |square|
	puts "On square #{square + 1} are #{rice_on_square} grain(s)"
	rice_on_square *= 2
end