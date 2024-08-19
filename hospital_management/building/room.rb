class Room
  attr_reader :name, :description, :department

  def initialize(name, description)
    @name = name
    @description = description
  end

  def department=(department)
    @department = department
    department.rooms.push(self) unless department.rooms.include?(self)
  end
end


class Office < Room
  def initialize(name, description)
    super(name, description)
  end
end

class Diagnostic < Room
  def initialize(name, description)
    super(name, description)
  end
end

class Ward < Room
  def initialize(name, description)
    super(name, description)
  end
end