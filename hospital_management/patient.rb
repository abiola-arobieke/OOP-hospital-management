require_relative './person.rb'

class Patient < Person
  attr_reader :name

  def initialize(name, address, gender="m", accpeted_date)
    @accpeted_date = accpeted_date
    super(name, address, gender)
  end
end