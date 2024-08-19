require_relative './techincal'

class Pharmarcist < Techincian
  attr_reader :name, :drugs

  def initialize(name, address, gender='m')
    super(name, address, gender)
    @name = name
    @address = address
    @gender = gender
    @drugs = []
  end

  def add_drugs(drug)
    
  end
end