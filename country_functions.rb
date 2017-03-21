def country_names(countries_data)
  names = []
  for country in countries_data
    names << country["name"]
  end
  return names
end

def get_four_random_countries(countries_data)
  # return countries_data.sample(4)
  random_countries_with_capitals = []
  for country in countries_data
    random_countries_with_capitals.push(country) if country["capital"] != ""
  end
  return random_countries_with_capitals.sample(4)
end

def returns_capital_from_four_randoms(four_random_countries)
  capitals = []
  for country in four_random_countries
    capitals.push(country["capital"])
  end

  return capitals.sample(1)
end

def return_country_name_from_randoms(four_random_countries)
  country_names = []
  for country in four_random_countries
    country_names.push(country["name"])
  end
  return country_names

end
