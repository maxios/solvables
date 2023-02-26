require_relative '../ruby.rb'

describe "#get_smallest_positive_mmissing" do
  subject { get_smallest_positive_missing(array) }

  context 'with smallest number inside the array' do
    let(:array) { [7, -2, 3, 1, 2, 20, -5] }
    let(:expected_result) { 4 }

    it { is_expected.to eq expected_result }
  end
end
