class NumberToWords
  attr_reader :arg

  def initialize(arg, options = {})
    @arg = arg
  end

  def translate
    unless /^\d{1,}$/.match arg.to_s
      return 'Not a Number'
    end
    result
  end

  private

  def result
    arg
  end
end