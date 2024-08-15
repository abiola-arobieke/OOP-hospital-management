class Hospital
  attr_reader :name, :address, :phone, :medical
  attr_accessor :department
  
  def initialize(name, address, phone)
    @name = name
    @address = address
    @phone = phone
    @department = []
    @medical = []
  end

  def add_department(department)
    @department.push(department)
    department.hospital = self
  end

end