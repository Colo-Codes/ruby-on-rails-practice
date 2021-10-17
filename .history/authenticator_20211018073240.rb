users = [
    { username: "mashrur", password: "password1"},
    { username: "jack", password: "password2"},
    { username: "arya", password: "password3"},
    { username: "jonshow", password: "password4"},
    { username: "heisenberg", password: "password5"},
    { username: "damian", password: "password6"}
]

def auth_user(users_array, username, password)
    users_array.each do |user_hash|
        if user_hash[:username] == username && user_hash[:password] == password
            return user_hash
        end
    end
    return "Wrong credentials."
end

puts 'Welcome to the authenticator'
25.times { print '-' }
puts
puts 'This program will take input from the user and compare its password.'
puts 'If password is correct, you will get back the user object.'
puts

i = 1
while i < 4 do
    print 'Username: '
    username = gets.chomp
    print 'Password: '
    password = gets.chomp
    
    puts auth_user(users, username, password)
    
    if i < 3
        print "Press 'n' to quit or any other key to continue: "
        input = gets.chomp.downcase
        break if input == 'n'
    end
    
    i += 1
end

