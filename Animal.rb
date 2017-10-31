
class Animal
	def initialize(name)
		@name = name
	end
	def name
		@name
	end
	def to_s
		"Hello my name is #{name}"
	end
	def greeting
		"Hello my name is #{name} and my voice is #{voice}"
	end
end
a = Animal.new("Robert")
puts "Hello #{a.name}"

b = Animal.new("Franz")
puts "Hello #{b.name} and #{a.name}"

c = [a,b,Animal.new("Daniel")]
puts c[2].name

#b.voice
puts b.to_s

class Dog < Animal
	def voice
		"Wau wau"
	end
	def name
		"Dog #{super}"
	end
end

class Cat < Animal
	def voice
		"Miaauuuu"
	end
end

class Fish < Animal
	def voice
		"blub"
	end
end

my_pets = [Dog.new("Pluto"),Cat.new("Muschi"),Fish.new("Hubert")]
puts my_pets[0].voice
puts my_pets[1].voice
puts my_pets[2].voice
puts my_pets[0].name
my_pets[0]=Dog.new("Wuffi")

my_pets.each{ |pat| puts"#{pat.name} says #{pat.voice}"}

puts my_pets[1].greeting




