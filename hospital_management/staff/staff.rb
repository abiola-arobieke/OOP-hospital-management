require_relative '../person.rb'

class Staff < Person
  attr_reader :name, :address, :gender, :department

  def initialize(name, address, gender, date_joined)
    @date_joined = date_joined
    super(name, address, gender)
  end

  def department=(department)
    @department = department
    department.staff.push(self) unless department.staff.include?(self)
  end
end


class Technical < Staff
  def initialize(name, address, gender='m', date_joined)
    super(name, address, gender, date_joined)
  end
end





class Operational < Staff
  attr_reader :appointment

  def initialize(name, address, gender='m', date_joined)
    super(name, address, gender, date_joined)
    @appointment = []
  end
end