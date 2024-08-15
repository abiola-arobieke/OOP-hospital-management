class Department
  attr_reader :name, :location, :hospital, :staff

  def initialize(name, location, name_abbr)
    @name = name
    @location = location
    @name_abbr = name_abbr
    @staff = []
  end

  def add_staff(employee)
    staff.push(employee)
    employee.department = self
  end

  def remove_staff(employee)
    staff.each do |worker|
      if worker == employee
        worker_index = staff.find_index(employee)
        staff.delete_at(worker_index)
      end
    end
  end

  def hospital=(hospital)
    @hospital = hospital
    hospital.department.push(self) unless hospital.department.include?(self)
  end
end
