module Crud

  require 'bcrypt'
  puts "Module CRUD activated"
  
  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end
  
  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end
  
  def create_secure_passwords(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end
  
  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        return user_record
      end
    end
    "Credentials were not correct"
  end
  
end

#=> {:username=>"mashrur", :password=>"$2a$12$BDjTdUozMzmEL5IrnyFbqO1YM7iwbioqUBn/vfYMKRkA/2WDsuZmu"}
#=> {:username=>"jack", :password=>"$2a$12$2P590gB9hXMterswF7IjzOrIiGm3ycKwj2KTnj7ZOMdh5nyCCGM5S"}
#=> {:username=>"arya", :password=>"$2a$12$LZeL.Qy9nUsxSwmoC3FySObJ5enWGBfIkQCX8qMV2aF0/kPCNC5Z6"}
#=> {:username=>"jonshow", :password=>"$2a$12$5SycZVgVzFMoD8X.DzVOZOKVGeHHUva.RPI044ExcmJSvn1ocU59a"}
#=> {:username=>"heisenberg", :password=>"$2a$12$Jl/T.AvlZY/p.HDsCjbJ.eD.PhUgLe/9XUtBszbHgDS2rNffzCm0q"}
#=> {:username=>"damian", :password=>"$2a$12$LiIYebxgTFNL4JbS9sxhOeSaknrwXHXwvGmqGZ6vcR8B5lGxp6hRm"}