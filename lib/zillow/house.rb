class House
  attr_accessor :cost, :address, :description, :bedrooms, :bathrooms
  @@all = []

  def initialize()
    @@all << self
  end

  def self.new_house_from_hash(hash)
    new_house = House.new()
    hash.each do |k,v|
      new_house.send("#{k}=", v)
    end
    new_house
  end

  def self.all
    @@all
  end

  def reset_all
    @@all = []
  end
end

new_hash = {description: "test", bedrooms: 2, bathrooms: 1, address: "123 fake street", cost: 2400}
new_house = House.new_house_from_hash(new_hash)
