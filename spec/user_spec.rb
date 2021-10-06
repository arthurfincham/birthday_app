require 'user'

describe User do
  subject { described_class.new("Arthur", "1", 9)}
  
  it 'has a name' do
    expect(subject.name).to eq "Arthur"
  end

  it 'has a day' do
    expect(subject.day).to eq 1
  end

  it 'has a month' do
    expect(subject.month).to eq 9
  end
end