require_relative '../ruby.rb'

describe "#two_number_sum" do
  subject { two_number_sum(array, target_sum) } 

  context 'first case' do
    let(:array) { [3, 5, -4, 8, 11, 1, -1, 6] }
    let(:target_sum) { 10 }

    it { is_expected.to eq [-1, 11] }
  end

  context 'second case' do
    let(:array) { [4, 6, 1] }
    let(:target_sum) { 5 }

    it { is_expected.to eq [1, 4] }
  end
end
