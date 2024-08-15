require_relative './person.rb'

class Staff < Person
  attr_reader :name, :address, :gender

  def initialize(name, address, gender, date_joined)
    @date_joined = date_joined
    super(name, address, gender)
  end
end


class Technical < Staff
  def initialize(name, address, gender='m', date_joined)
    super(name, address, gender, date_joined)
  end
end


class Administrative < Staff
  def initialize(name, address, gender='m', date_joined)
    super(name, address, gender, date_joined)
  end
end


class Operational < Staff
  def initialize(name, address, gender='m', date_joined)
    super(name, address, gender, date_joined)
  end
end