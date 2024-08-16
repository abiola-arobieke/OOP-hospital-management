require_relative '../staff'

class Techincian < Technical
  def initialize(name, address, gender='m')
    super(name, address, gender)
  end
end