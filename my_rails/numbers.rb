# puts 1+2 
# puts 10.0 /4
puts "Simple calculator"
20.times {print "_"}
puts

puts "Enter a first Number"
x = gets.chomp
puts "Enter Second Number"
y = gets.chomp

puts "Multiplecation is : #{x.to_i * y.to_i}"
puts "division is : #{x.to_f / y.to_i}"
puts "addtion is : #{x.to_i + y.to_i}"
puts "subtraction is #{x.to_i - y.to_i}"
puts "modulus is #{x.to_i % y.to_f}"

