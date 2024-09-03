require_relative './admin'
require_relative '../../building/department'
require_relative './bill'

class Cashier < Administrative
  attr_reader :created_bills

  def initialize(name, address, gender='m', date_joined)
    super(name, address, gender, date_joined)
    @created_bills = []
  end

  def create_bill(id, patient, department, amount)
    Bill.new(id, patient, department, amount, self)
  end
end