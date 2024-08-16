require_relative './admin'

class Finance < Administrative
  def initialize(name, address, gender='m')
    super(name, address, gender)
  end
end