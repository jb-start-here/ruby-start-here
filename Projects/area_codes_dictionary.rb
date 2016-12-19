dial_book = {
  "Los Angeles" => 954,
  "New York" => 545,
  "Washington" => 125,
  "Chicago" => 145,
  "Detroit" => 785,
  "San Francisco" => 741,
  "New Jersey" => 556,
  "Miami" => 569,
  "New Orleans" => 777,
  "Las Vegas" => 632
}

def list_cities(book)
  puts "The following cities are listed\n"
  book.each do |k,v|
    puts k
  end
  puts "\n"
end   

def search(book,city)
  if book.has_key?(city)
    book[city]
  else
    "City not listed. Try another city"
  end
end



loop do
  list_cities dial_book
  puts "Enter City name:"
  city = gets.chomp
  puts "#{city} => #{search dial_book,city}"
  puts "Do you want to search for another city? (y/n)"
  ans = gets.chomp
  if ans != "y"
    break
  end
end