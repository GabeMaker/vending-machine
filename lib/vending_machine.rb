class VendingMachine

  attr_reader :display

  def initialize
    @display = 'INSERT COIN'
  end

  def insert(coin)
    @display = "#{coin} cents"
  end

end