require_relative '../staff'

class Pharmarcist < Technical
  attr_reader :name, :drugs

  def initialize(name, address, gender='m', date_joined)
    super(name, address, gender, date_joined)
    @name = name
    @address = address
    @gender = gender
    @drugs = []
  end

  def add_drug(drug)
    @drugs.push(drug)
    drug.pharmarcist = self
  end
end

Technical