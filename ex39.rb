# creates a mapping of state to abbreviations
states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'California' => 'CA',
	'New York' => 'NY',
	'Michigan' => 'MI'
}

# creates a basic set of states and some cities in them
cities = {
	'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'
}

# add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some cities
puts '-' * 10
puts "NY State has: ", cities['NY']
puts "OR State has: ", cities['OR']

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is: ", states['Michigan']
puts "Florida's abbreviation is: ", states['Florida']

# puts every state abbreviation
puts '-' * 10
for state, abbrev in states
	puts "%s is abbreviated %s" % [state, abbrev]
end

# puts every city in a state
puts '-' * 10
for abbrev, city in cities
	puts "s has the city %s" % [abbrev, city]
end

# now do both at the same time
for state, abbrev in states
	puts "%s states is abbreviated %s and has city %s" % [state, abbrev, cities[abbrev]]
end

puts '-' * 10
# if it's not there you get nil
state = states['Texas']

if not state
	puts "Sorry, no Texas."
end

# get city with a default value
city = cities['TX'] || 'Does Not Exist'
puts "The city for the state 'TX' is: %s" % city

my_city = cities[1]

if not my_city
	puts "Sorry, can't do indices."
end

# can't have duplicate keys. last will overwrite all other values
# see hash operations: http://www.tutorialspoint.com/ruby/ruby_hashes.htm
cities.each do |state, city|
	#if state == 'CA'
		puts city
	#end
end

puts cities.inspect















