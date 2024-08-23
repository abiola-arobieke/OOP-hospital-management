require_relative './admin'

class Finance < Administrative
  def initialize(name, address, gender='m', date_joined)
    super(name, address, gender='m', date_joined)
  end
end