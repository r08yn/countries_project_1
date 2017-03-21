require_relative("countries_data")
require_relative("country_functions")


puts "Welcome to the countries appliction"
while true
  puts "What would you like to do?"

  puts "Options:"
  puts "  q: exit"
  puts "  1: see list of countries"
  puts " 2: Guess which country has the following capital"

  choice = gets.chomp
  case choice
  when "q"
    puts "See you later"
    break
  when "1"
    puts "Country Names:"
    puts country_names(COUNTRIES)
    when "2"
      puts "Which of these countries:"
    random_countries = get_four_random_countries(COUNTRIES)
    puts "1:" + return_country_name_from_randoms(random_countries)[0]
    puts "2:" + return_country_name_from_randoms(random_countries)[1]
    puts "3:" + return_country_name_from_randoms(random_countries)[2]
    puts "4:" + return_country_name_from_randoms(random_countries)[3]
    puts "Has the following capital city:"
    puts returns_capital_from_four_randoms(random_countries)
  end
  puts "\n\n"
end
