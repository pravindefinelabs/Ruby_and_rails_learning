# frozen_string_literal: true

class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name : #{@first_name}, Last Name : #{@last_name},
         Email address : #{@email}, Username : #{@username}, Password : #{@password}"
  end
end

pravin = Student.new('Pravin', 'Hudekar', 'pravin@gmail.com', 'pravinhudekar', 'pass@123')
vishnu = Student.new('Vishnu', 'Ubale', 'vishnu12@gmail.com', 'vishnuubale', 'pass@333')

puts pravin
puts vishnu

puts 'vishnu Ubale Alter with Pravin'
vishnu.last_name = pravin.last_name
puts vishnu
