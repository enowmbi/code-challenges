require_relative "running_median"

RSpec.describe "Mytest" do

  describe 'running_median' do
    it 'should return running median' do
      expect(running_median([2, 1, 5, 7, 2, 0, 5])).to eq([2, 1.5, 2, 3.5, 2, 2, 2])
    end
  end
end
