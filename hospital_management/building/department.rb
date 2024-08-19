class Department
  attr_reader :name, :name_abbr, :building, :staff, :rooms

  def initialize(name, name_abbr)
    @name = name
    @name_abbr = name_abbr
    @staff = []
    @rooms = []
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

  def add_room(room)
    @rooms.append(room)
    room.department = self
  end

  def remove_room(room)
    rooms.each do |department_room|
      if department_room = room
        department_room_index = rooms.find_index(room)
        rooms.delete_at(department_room_index)
      end
    end
  end

  def building=(building)
    @building = building
    building.departments.push(self) unless building.department.include(self)
  end
end
