class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit_num)
    @units << unit_num
  end

  def average_rent
    @units[0][:montly_rent]
    montly_rent.map do |rent|
      rent.count
    end
  end
    #units are made of the instances of apartment
    #parse thru each apartment_info and pull rent
    #add all together and split by # of apartments

end
