require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require 'pry'

class ApartmentTest < Minitest::Test

  def test_it_exists
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_instance_of Apartment, a1
  end

  def test_it_returns_apartment_number
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal "A1", a1.number
  end

  def test_it_returns_rent
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal 1200, a1.monthly_rent
  end

  def test_it_returns_bathrooms
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal 1, a1.bathrooms
  end

  def test_it_returns_bedrooms
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal 1, a1.bedrooms
  end

  def test_does_apartment_have_tenant
    a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_equal nil, a1.renter
  end

  #def test_add_renter
  #  a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  #  renter = Renter.new("Jessie")

  #  assert_equal jessie, a1.add_renter(jessie)
  #end

  #def test_returns_renter
  #  a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  #  renter = Renter.new("Jessie")
  #  a1.add_renter(jessie)

  #  assert_equal "Jessie", a1.renter
  #end
end
