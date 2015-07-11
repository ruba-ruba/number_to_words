RSpec.describe NumberToWords do

  describe "methods" do
    numbers = [0, 1, 7, 12, 122, 4050]
    results = ['zero', 'one', 'seven', 'twelve', 'one hundred twenty two', 'four thousand fifty']

    numbers.each_with_index do |number, index|
      it "convert #{number} to words" do
        expect(NumberToWords.new(number).translate).to eq results[index]
      end
    end

    it 'says if Not a Number' do
      expect(NumberToWords.new('Ukraine').translate).to eq 'Not a Number'
    end
  end

end
