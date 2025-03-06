dial_book = {
    "newyork" => "212",
    "newbrunswitch"=>"732",
    "edison" => "908",
    "plainsboro" => "350",
    "sanfrancisco" => "204",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

def get_city_names(city_book)
     city_book.each {|name, _| puts name}
     puts "Which city do you want the area code for ?"
end

def get_area_code(city_book, key)
    code = city_book[key.downcase]
    if code
        puts "The area code for #{key.capitalize} is #{code}."
      else
        puts "City not found."
      end

end

loop do
    puts "Do you want to lookup  an area code based on a city name? (Y/N)"
    check = gets.chomp.downcase
    break if check != "y"
    get_city_names(dial_book)
    key = gets.chomp
    get_area_code(dial_book, key)
end