users = [
    { username: "mashrur", password: "password1"},
    { username: "jack", password: "password2"},
    { username: "arya", password: "password3"},
    { username: "jonshow", password: "password4"},
    { username: "heisenberg", password: "password5"},
    { username: "damian", password: "password6"}
]

puts 'Welcome to the authenticator'
25.times { print '-' }
puts
puts 'This program will take input from the user and compare its password.'
puts 'If password is correct, you will get back the user object.'
puts

i = 0
while i < 4 do
    print 'Username: '
    username = gets.chomp
    print 'Password: '
    password = gets.chomp

    user_found = 0
    users.each do |user_hash|
        user_hash.each do |user, pass|
            if user == username && pass == password
                puts username
                puts user
                puts "This is your user object: #{user_hash}"
                user_found = 1
            end
        end
    end

    if user_found == 0 && i < 3
        puts "Wrong credentials. Try again (you have #{3-i} attempts left)"
    end

    i += 1
end

puts '[ERROR] You entered too many wrong credentials.'