require 'bcrypt'

my_password = BCrypt::Password.create("my password")

puts my_password
#=> $2a$12$gFBHai0kchqviHHxMmDRA.Y9mBjTaPFG28bsQTZN6ngh7Gaq9WizS
puts my_password.version
#=> 2a
puts my_password.cost
#=> 12
puts my_password == "my password"
#=> true
puts my_password == "Another password"
#=> false

password_to_check = BCrypt::Password.new('$2a$12$gFBHai0kchqviHHxMmDRA.Y9mBjTaPFG28bsQTZN6ngh7Gaq9WizS')
puts password_to_check == "my password"
#=> true
