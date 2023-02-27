require_relative '../ruby.rb'


INPUTS = [
  {
    "characters": "Bste!hetsi ogEAxpelrt x ",
    "document": "AlgoExpert is the Best!",
    "expected": true
  },
  {
    "characters": "A",
    "document": "a",
    "expected": true
  },
  {
    "characters": "a",
    "document": "a",
    "expected": true
  }, 
  {
    "characters": "a hsgalhsa sanbjksbdkjba kjx",
    "document": "",
    "expected": true
  }, 
  {
    "characters": " ",
    "document": "hello",
    "expected": true
  }, 
  {
    "characters": "     ",
    "document": "     ",
    "expected": true
  },
  {
    "characters": " ",
    "document": "  ",
    "expected": false
  },
  {
    "characters": "",
    "document": " ",
    "expected": false
  }
]
describe ".generate_document" do
  subject { generate_document(characters, document) }

  INPUTS.each_with_index do |input, index|
    puts input.inspect
    describe "Case #{index}" do
      let(:characters) { input[:characters] }
      let(:document) { input[:document] }
      let(:expected_output) { input[:expected] }

      it { is_expected.to eq expected_output }
    end
  end
end
