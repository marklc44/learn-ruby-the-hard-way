name = 'Zed A. Shaw'
age = 35 #not a lie
height = (74 * 2.54) / 100 #centimeters
height_meters = height.floor
height_centimeters = (height - height_meters) *100
weight = 180 * 0.453592 # kilograms
weight_kg = weight.floor
weight_g = (weight - weight_kg) * 100
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about %s" % name
puts "He's %d meters %d centimeters tall." % [height_meters, height_centimeters]
puts "He's %d kg %d g heavy." % [weight_kg, weight_g]
puts "Actually, that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d and %d I get %d." % [age, height, weight, age + height + weight]