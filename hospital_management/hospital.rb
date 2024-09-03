class Hospital
  attr_reader :name, :address, :phone, :medical
  attr_accessor :buildings

  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @buildings = []
    @medical = []
  end

  def add_building(building)
    @buildings.push(building)
    building.hospital = self
  end
end