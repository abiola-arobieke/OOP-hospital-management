class Bill 
  attr_reader :id, :patient, :department, :amount, :cashier, :status, :paid

  def initialize(id, patient, department, amount, cashier)
    @id = id

    @patient = patient
    patient.bills << self

    @department = department
    @department.bills << self
   
    @amount = amount

    @cashier = cashier
    @cashier.created_bills << self

    @status = 'not paid'
    @paid = 0
  end

  def paid=(amount)
    @paid += amount
  end

  def status=(state)
    @status = state
  end
end