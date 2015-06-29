require 'vending_machine'

describe VendingMachine do

  it "displays 'INSERT COIN' when no coin inserted" do
    expect(subject.display).to eq('INSERT COIN')
  end

  context 'valid coins' do
    it 'accepts nickels and updates display' do
      subject.insert('5')
      expect(subject.display).to eq('5 cents')
    end

    it 'accepts dimes and updates display' do
      subject.insert('10')
      expect(subject.display).to eq('10 cents')
    end

    it 'accepts quarters and updates display' do
      subject.insert('25')
      expect(subject.display).to eq('25 cents')
    end
  end

  context 'invalid coins' do
    it 'rejects pennies' do
      subject.insert('1')
      expect(subject.display).to eq('INSERT COIN')
      expect(subject.coin_return).to eq('1')
    end

    it 'rejects non-coins' do
      subject.insert('not a coin')
      expect(subject.display).to eq('INSERT COIN')
      expect(subject.coin_return).to eq('not a coin')
    end
  end

end