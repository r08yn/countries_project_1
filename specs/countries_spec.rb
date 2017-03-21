require_relative('../country_functions')
require_relative('../countries_data')
require('minitest/autorun')

class CountriesTest < MiniTest::Test

  def setup
    @countries = COUNTRIES
  end

  def test_gives_an_array_of_all_country_names
    names = country_names(@countries)
    assert_equal(247, names.length)
  end

def test_gives_an_array_of_four_countries
  result = get_four_random_countries(@countries)
  assert_equal(4, result.length)
end

end
