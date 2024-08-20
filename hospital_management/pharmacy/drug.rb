class Drug
  attr_reader :code, :name, :description, :dosage, :pharmarcist, :administered

  def initialize(code, name, dosage, description, administration)
    @code = code
    @name = name
    @dosage = dosage
    @description = description
    @administration = administration
    @administered = []
  end
 
  def pharmarcist=(pharmarcist)
    @pharmarcist = pharmarcist
    pharmarcist.drugs.push(self) unless pharmarcist.drugs.include?(self)
  end

  def administer(request)
    if request.dosage <= @dosage
      @dosage -= request.dosage
      @administered.push(request)
      request.drug = self
      true
    else
      puts 'Request denied! Insufficient dosage in the store!!'
      false
    end
  end
end