## Animal is-a object look at the extra credit

class Animal
end

## Dog is-a Animal
class Dog < Animal

	def initialize(name)
		## Dog has-a name
		@name = name
	end
end

## Cat is-a Animal
class Cat < Animal

	def initialize(name)
		## Cat has-a name
		@name = name
	end

	## a cat has-many legs
	@legs = ['front left', 'front right', 'back left', 'back right']
end

## 
class Person

	def initialize(name)
		## Person has-a name
		@name = name

		## Person has-a pet of some kind
		@pet = nil
	end

	attr_accessor :pet
end

##
class Employee < Person

	def initialize(name, salary)
		## Employee has-a name by inheritance from Person
		super(name)
		## Employee has-a salary
		@salary = salary
	end
end

# Fish is-a object
class Fish

	def initialize(name)
		@name = name
	end

	def swim(name)
		puts "#{name} is swimming!"
	end
end

## Salmon is-a Fish
class Salmon < Fish

	def initialize(name)
		super(name)
	end
end

## Halibut is-a Fish
class Halibut < Fish

	def initialize(name)
		super(name)
	end
end

## rover is-a Dog and has-a name Rover
rover = Dog.new("Rover")

## satan is-a Cat and has-a name Satan
satan = Cat.new("Satan")

## mary is-a Person and has-a name "Mary"
mary = Person.new("Mary")

## mary has-a Pet satan who is-a Cat and has-a name Satan
mary.pet = satan

## frank is-a Employee which is-a Person. frank has-a name Frank and has-a salary 120000
frank = Employee.new("Frank", 120000)

## frank has-a pet which is-a rover which is-a Dog and has-a name Rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new("flipper")

## crouse is-a Salmon which is-a Fish
crouse = Salmon.new("crouse")

## harry is-a Halibut which is-a Fish
harry = Halibut.new("harry")

flipper.swim(@name)
crouse.swim(name)
harry.swim(name)












