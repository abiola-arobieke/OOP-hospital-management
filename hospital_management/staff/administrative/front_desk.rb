require_relative './admin'

class FrontDesk < Administrative
  def initialize(name, address, gender='m', date_joined)
    super(name, address, gender, date_joined)
  end
end

