class Person
	private
	def greet ( name )
 		puts "Hola #{name}!"
 	end
end

class Hacker < Person
	#attr_reader :name
	#attr_writer :name
	attr_accessor :name

	PI= 3.14

	def hack
		puts "Iniciando proceso de hackeo intenso..."
		puts "listo el hackeo"
	end

	def greet_substitute ( name )
		greet ( name )
	end

	def initialize
		@name = "hacker1"
		@@age = 0
	end

	def self.age
		@@age
	end
	
	def self.age= x 
		@@age = x 
	end
end

class Employee < Hacker
	def initialize ( name )
		@var1 = 0
		greet name
	end
	def var1= x   #setters
		@var1 = x 
	end
	def var1 #getters
		@var1
	end
end




peter = Employee.new "mundo"
peter.greet_substitute "Jean" 
puts peter.is_a? Object 
puts peter.var1
peter.var1= 2
puts peter.var1
juca = Person.new

pedro = Person.new

#pedro.greet("juca")
#juca.greet("pedro")

puts juca.object_id 
puts pedro.object_id
puts"--------"
wilbert= Hacker.new
wilbert.hack
puts"-------"
puts wilbert.name
wilbert.name = "Wilbert"
puts Hacker::PI
puts Math::PI
puts Hacker.age
Hacker.age = 2
puts Hacker.age
puts Math::sqrt(3)
puts"-------"
#antonio= Employee.new
#antonio.greet("Douglas")
