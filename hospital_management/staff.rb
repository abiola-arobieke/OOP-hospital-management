require_relative './person.rb'

class Staff < Person
  attr_reader :name, :address, :gender

  def initialize(name, address, gender)
    super(name, address, gender)
  end
end


class Technical < Staff

  def initialize(name, address, gender='m')
    super(name, address, gender)
  end
end


class Administrative < Staff
  def initialize(name, address, gender='m')
    super(name, address, gender)
  end
end


class Operational < Staff
  
  def initialize(name, address, gender='m')
    super(name, address, gender)
  end
end