require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require 'pry'

class RenterTest < Minitest::Test

def test_it_exists
  renter = Renter.new("Jessie")

  assert_instance_of Renter, renter
end

def test_it_returns_renters_name
  renter = Renter.new("Jessie")

  assert_equal "Jessie", renter.name
end

end
