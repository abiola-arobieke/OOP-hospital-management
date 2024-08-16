class Department
  attr_reader :name, :name_abbr, :building, :staff

  def initialize(name, name_abbr)
    @name = name
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

  def building=(building)
    @building = building
    building.departments.push(self) unless building.department.include(self)
  end
end
