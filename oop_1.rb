class Student
  # Accessors
  attr_accessor :first_name, :last_name, :email
  attr_reader :username
  attr_writer :password

#   # Instance variables
#   @first_name
#   @last_name
#   @email
#   @username
#   @password

#   # Setters
#   def first_name=(name)
#     @first_name = name
#   end

#   # Getters
#   def first_name
#     @first_name
#   end
  
  # Initialize method
  def initialize(firstname, lastname, email)
    @first_name = firstname
    @last_name = lastname
    @email = email
  end

  # Methods
  def to_s
    "First name: #{@first_name}"
  end

#   def set_username
#     @username = "classUsername1"
#   end
end

# damian = Student.new
# damian.first_name = "Damian"
# damian.last_name = "Demasi"
# damian.email = "my@email.com"
# damian.set_username
# damian.password = "mypass"

# puts damian.first_name
# puts damian.last_name
# puts damian.email
# puts damian.username

# Using initialization
damian = Student.new("Damian", "Demasi", "my@email.com")
puts damian.first_name
puts damian.last_name
puts damian.email
