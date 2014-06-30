# sets variable cars equal to 100
cars = 100
# sets space_in_car equal to 4.0
space_in_car = 4
# sets drivers equal to 30 
drivers = 30
# sets passengers equal to 90
passengers = 90
# sets cars_not_driven equal to value of cars minus value of drivers
cars_not_driven = cars - drivers
# sets cars_driven equal to number of drivers
cars_driven = drivers
# sets carpool_capacity equal to value of cars_driven times space_in_car
carpool_capacity = cars_driven * space_in_car
# sets average_passengers_per_car equal to total number of passengers divided by total number of cars driven
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available"
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."