require_relative './person.rb'

class Patient < Person
  def initialize(name, address, gender="m")
    # @accepted_date = accpeted_date
    super(name, address, gender)
  end
end