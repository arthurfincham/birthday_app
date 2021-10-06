require 'user'

describe User do
  subject { described_class.new("Arthur", "1997-01-09")}
  
  it 'has a name' do
    expect(subject.name).to eq "Arthur"
  end

  it 'has a birthday' do
    expect(subject.birthday).to eq "1997-01-09"
  end
end