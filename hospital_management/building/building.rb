class Building
  attr_reader :name, :no_of_ward, :departments, :hospital

  def initialize(name, no_of_ward)
    @name = name
    @no_of_ward = no_of_ward
    @departments = []
  end

  def add_department(department)
    departments.push(department)
    department.building = self
  end

  def hospital=(hospital)
    @hospital = hospital
    hospital.buildings.push(self) unless hospital.buildings.include?(self)
  end
end