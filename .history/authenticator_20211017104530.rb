users = [
    { username: "mashrur", password: "password1"},
    { username: "jack", password: "password2"},
    { username: "arya", password: "password3"},
    { username: "jonshow", password: "password4"},
    { username: "heisenberg", password: "password5"},
    { username: "damian", password: "password6"}
]

p 'Welcome to the authenticator\n'
25.times { print '-' }
p '\nThis program will take input from the user and compare its password.'
p 'If password is correct, you will get back the user object.'

