class DiagnosisType
  attr_reader :code, :description, :diagnosis

  def initialize(code, description)
    @code = code
    @description = description
    @diagnosis = []
  end
end