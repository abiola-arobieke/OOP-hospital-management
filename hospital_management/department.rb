class Department
  attr_reader :name, :location, :hospital

  def initialize(name, location, name_abbr)
    @name = name
    @location = location
    @name_abbr = name_abbr
  end

  def hospital=(hospital)
    @hospital = hospital
    hospital.department.push(self) unless hospital.department.include?(self)
  end
end
