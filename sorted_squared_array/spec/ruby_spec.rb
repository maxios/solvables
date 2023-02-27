require_relative '../ruby.rb'

describe "#sorted_squared" do
  subject { sorted_squared(input) }

  describe "Case 1" do
    let(:input) { [-5, -2, 0, 1, 4, 10] }
    let(:expected_output) { [0, 1, 4, 16, 25, 100] }

    it { is_expected.to eq expected_output }
  end

  describe 'Case 2' do
    let(:input) { [1, 2, 3, 5, 6, 8, 9] }
    let(:expected_output) { [1, 4, 9, 25, 36, 64, 81] }

    it { is_expected.to eq expected_output }
  end

  describe 'Case 3' do
    let(:input) { [1] }
    let(:expected_output) { [1] }

    it { is_expected.to eq expected_output }
  end

  describe 'Case 4' do
    let(:input) { [1, 2] }
    let(:expected_output) { [1, 4] }

    it { is_expected.to eq expected_output }
  end

  describe 'Case 5' do
    let(:input) { [0] }
    let(:expected_output) { [0] }

    it { is_expected.to eq expected_output }
  end

  describe 'Case 6' do
    let(:input) { [-1] }
    let(:expected_output) { [1] }

    it { is_expected.to eq expected_output }
  end

  describe 'Case 7' do
    let(:input) { [-2, -1] }
    let(:expected_output) { [1, 4] }

    it { is_expected.to eq expected_output }
  end

  describe 'Case 7' do
    let(:input) { [-10, -5, 0, 5, 10] }
    let(:expected_output) { [0, 25, 25, 100, 100] }

    it { is_expected.to eq expected_output }
  end
   
end
