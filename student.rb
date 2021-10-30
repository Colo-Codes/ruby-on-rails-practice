require_relative 'crud'

class Student
  # If we want to use an imported module with a class, we need to include it
  include Crud

  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "#{@first_name} #{@last_name} - #{@email} - #{@username} - #{@password}"
  end
end

damian = Student.new("Damian", "Demasi", "damian@example.com", "damian", "password1")

hashed_password = damian.create_hash_digest(damian.password)

puts hashed_password
