require 'timecop'
require 'saver'

describe Saver do

  describe 'counting days' do
    
    before do
      Timecop.freeze(Time.local(2021, 10, 6))
    end
    
    it 'returns 95 days' do
      @user = Saver.new("Arthur", 9, 1)
      expect(@user.calc_days).to eq 95
    end

    it 'returns 1 day' do
      @user = Saver.new("Michael", 7, 10)
      expect(@user.calc_days).to eq 1
    end

    it 'returns 322 days' do
      @user = Saver.new("Arthur", 24, 8)
      expect(@user.calc_days).to eq 322
    end

    it 'returns 0 if birthday is today' do
      @user = Saver.new("Arthur", 6, 10)
      expect(@user.calc_days).to eq 0
    end
  end
end