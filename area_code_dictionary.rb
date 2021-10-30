dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key] if somehash.include? key
end
 
# Execution flow
loop do
  print 'Do you want to lookup an area code based on a city name? (Y/N): '
  user_input = gets.chomp
  
  break if user_input.downcase != 'y'

  get_city_names(dial_book).each {|city| puts " -> #{city}"}
  
  print 'Type a city name: '
  user_input_city = gets.chomp

  city_result = get_area_code(dial_book, user_input_city.downcase)
  if city_result.nil?
    puts " -> The city you entered does not exists on dictionary."
  else
    puts " -> The zip code for #{user_input_city} is #{city_result}."
  end
  
end