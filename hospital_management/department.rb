class Department
  attr_reader :name, :location, :hospital, :staff

  def initialize(name, location, name_abbr)
    @name = name
    @location = location
    @name_abbr = name_abbr
    @staff = []
  end

  def add_staff(worker)
    staff.push(worker)
    worker.department = self
  end

  def hospital=(hospital)
    @hospital = hospital
    hospital.department.push(self) unless hospital.department.include?(self)
  end
end
