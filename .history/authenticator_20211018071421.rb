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

i = 0
while i < 4 do
    print 'Username: '
    username = gets.chomp
    print 'Password: '
    password = gets.chomp

    users.each do |user_hash|
        wrong_credentials = false
        if user_hash[:username] == username && user_hash[:password] == password
            puts "This is your user object: #{user_hash}"
            break
        else
            wrong_credentials = true
        end
        puts "Wrong credentials. Try again (you have #{3-i} attempts left)"

    end

    # if user_found == 1
    #     break
    # elsif user_found == 0 && i < 3
    # else
    #     puts '[ERROR] You entered too many wrong credentials.'
    # end

    i += 1
end
