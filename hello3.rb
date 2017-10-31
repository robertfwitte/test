class Animal
	def initialize(name)
		@name = name
	end
	def name
		@name
	end
	def initialize(name="default") 
		@name = name 
	end
	def family_name
		self.class.name
	end
	def full_name
		"#{family_name} #{name}"
	end
	def	species_name
		if self.class.instance_methods(false).include?(:breathe) == true
			self.class.name
			else
			 self.class.superclass.name
		end
	end
	def greeting
		"Hello my name is #{full_name}, my voice is #{voice}, I breathe #{breathe} and I am a #{species_name}."
	end
end


class Mammal < Animal
	def breathe
		"air"
	end
end

class Dog < Mammal
	def voice
		"Wau Wau"
	end
end
	
class Cat < Mammal
	def voice
		"miau miau"		
	end
end

class Fish < Animal
	def voice
		"Blubb Blubb"
	end
	def breathe
		"water"
	end
end

my_pets = [Dog.new("Fanny"),Cat.new("Kitty"),Fish.new("Nemo")]


#pets_hash = { "name" => "Raffi", "voice" => "Miauw"}
#puts my_pets[0].greeting

my_pets.each { |pet| puts "#{pet.greeting}" }
