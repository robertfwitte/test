class Animal
	def name
		@name
	end
	def name=(name)
		@name = name
	end
	def initialize(name="default") 
		@name = name 
	end
end

a=Animal.new
puts "Name is #{a.name}"
a.name = "Fanny"
puts "Name is #{a.name}"


#add another class for "mamals" with method breathe with air and "fish" method breathes with water
#create not only array of animals and hash of animals 
