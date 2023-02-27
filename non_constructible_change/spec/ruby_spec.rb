require_relative '../ruby.rb'

describe '#non_constructible_change' do
  subject { non_constructible_change(input) }

  describe 'Case 1' do
    let(:input) { [5, 7, 1, 1, 2, 3, 22] }
    let(:expected_output) { 20 }

    it { is_expected.to eq expected_output }
  end
end
