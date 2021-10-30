# We can do this to require the 'crud' module:
require_relative 'crud'

# Or we can do this:
# $LOAD_PATH << "."
# require 'crud'

users = [
    { username: "mashrur", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "arya", password: "password3" },
    { username: "jonshow", password: "password4" },
    { username: "heisenberg", password: "password5" }
]

hased_users = Crud.create_secure_passwords(users)
puts hased_users