require_relative '../ruby.rb'

describe "#find_three_largest" do
  subject { find_three_largest(input) }

  describe 'Case 1' do
    let(:input) { [141, 1, 17, -7, -17, -27, 18, 541, 8, 7, 7] }
    let(:expected_output) { [18, 141, 541] }

    it { is_expected.to eq expected_output }
  end

  describe 'Case 2' do
    let(:input) { [0] }
    let(:expected_output) { [0] }

    it { is_expected.to eq expected_output }
  end

  describe 'Case 3' do
    let(:input) { [-5, -4, -3, -2, -1] }
    let(:expected_output) { [-3, -2, -1] }

    it { is_expected.to eq expected_output }
  end

  describe 'Case 4' do
    let(:input) { [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] }
    let(:expected_output) { [0, 0, 0] }

    it { is_expected.to eq expected_output }
  end

  describe 'Case 5' do
    let(:input) { [-1, -1, 2, 3, 3, 3, 4] }
    let(:expected_output) { [3, 3, 4] }

    it { is_expected.to eq expected_output }
  end
end
