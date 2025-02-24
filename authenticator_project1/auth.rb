

Users = {"pravin" =>"pass1","rahul"=>"pass2","raj"=>"pass3","vishal"=>"pass4"}
puts "Welcome to the authenticator"
26.times{print "-"}

puts "\nthis program will take input from the user and compare password" 

loop do
puts "Username : " 
username =gets.chomp

puts "Password : "
password = gets.chomp

user =Users.select{|key, value|key==username && value ==password}
if user.any?
  puts "Authentication Successfull !"
puts user
else
  puts "Credential were not correct"
end

puts "Press n to quit or any other key to continue"
 a= gets.chomp
 break if a = "n"
end




