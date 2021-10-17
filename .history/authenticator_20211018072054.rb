users = [
    { username: "mashrur", password: "password1"},
    { username: "jack", password: "password2"},
    { username: "arya", password: "password3"},
    { username: "jonshow", password: "password4"},
    { username: "heisenberg", password: "password5"},
    { username: "damian", password: "password6"}
]

def auth_user(user_hash, username, password)

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

    wrong_credentials = false
    users.each do |user_hash|
        if user_hash[:username] == username && user_hash[:password] == password
            puts "This is your user object: #{user_hash}"
            i = 0
            wrong_credentials = false
            break
        else
            wrong_credentials = true
        end    
    end

    if wrong_credentials == true
        puts "Wrong credentials. Try again (you have #{3-i} attempts left)"
    end

    print "Press 'n' to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == 'n'
    
    i += 1
end

