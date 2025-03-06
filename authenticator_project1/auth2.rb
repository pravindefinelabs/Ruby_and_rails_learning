# frozen_string_literal: true

Users = [{ Username: 'pravin', Password: 'pass1' },
         { Username: 'rahul', Password: 'pass2' },
         { Username: 'raj', Password: 'pass3' },
         { Username: 'vishal', Password: 'pass4' }].freeze

def auth_user(username, password, users)
  # Use find to get the user if matching username and password are found
  user = users.find { |u| u[:Username] == username && u[:Password] == password }

  if user
    puts 'Authentication Successful!'
    puts user
  else
    puts 'Credentials were not correct'
  end
end

puts 'Welcome to the authenticator'
26.times { print '-' }

puts "\nThis program will take input from the user and compare passwords."

auth_count = 1
while auth_count <= 5
  puts 'Username: '
  username = gets.chomp

  puts 'Password: '
  password = gets.chomp
  auth_user(username, password, Users)

  puts 'Press n to quit or any other key to continue'
  a = gets.chomp
  break if a == 'n'
  
  auth_count += 1
end
if auth_count >= 5
    puts "Thank You! for visiting"
    puts "you reach your limits"
end