require_relative '../staff'

class Administrative < Staff
  def initialize(name, address, gender='m', date_joined)
    super(name, address, gender, date_joined)
  end
end