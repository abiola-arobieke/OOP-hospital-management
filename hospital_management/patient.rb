require_relative './person.rb'

class Patient < Person
  attr_reader :appointment

  def initialize(name, address, gender="m")
    super(name, address, gender)
    @appointment = []
  end
end