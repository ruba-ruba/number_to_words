class NumberToWords
  NUMBERS_TO_WORDS_MAPPING = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19 =>"nineteen",
      18 =>"eighteen",
      17 =>"seventeen",
      16 =>"sixteen",
      15 =>"fifteen",
      14 =>"fourteen",
      13 =>"thirteen",
      12 =>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one",
      0 => "zero"
    }

  attr_reader :arg

  def initialize(arg, options = {})
    @arg = arg
  end

  def translate
    unless /^\d{1,}$/.match arg.to_s
      return 'Not a Number'
    end
    result(arg)
  end

  private

  def result(number)
    number = number.to_i
    str = ""
    if NUMBERS_TO_WORDS_MAPPING.has_key? number
      NUMBERS_TO_WORDS_MAPPING[number]
    else
      NUMBERS_TO_WORDS_MAPPING.each do |num, name|
        if number < 100 && number/num > 0
          return str + "#{name}" if number%num == 0
          return str + "#{name} " + result(number%num)
        elsif number/num > 0
          return str + result(number/num) + " #{name} " + result(number%num)
        end
      end
    end
  end

end