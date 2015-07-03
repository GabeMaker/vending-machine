require 'vending_machine'

describe VendingMachine do
  it 'can handle a sequence of valid and invalid coins' do
    subject.insert('1')
    expect(subject.display).to eq('INSERT COIN')
    expect(subject.coin_return).to eq('1')
    subject.insert('25')
    expect(subject.display).to eq('25 cents')
    subject.insert('99')
    expect(subject.display).to eq('25 cents')
    expect(subject.coin_return).to eq('99')
    subject.insert('10')
    expect(subject.display).to eq('35 cents')
  end
end