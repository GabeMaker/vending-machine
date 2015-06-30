class VendingMachine

  VALID_COINS = ['5', '10', '25']

  attr_reader :display, :coin_return

  def initialize
    @display = 'INSERT COIN'
    @total = 0
  end

  def insert(coin)
    if VALID_COINS.include? coin
      @total += coin.to_i
      @display = "#{@total} cents"
    else
      @coin_return = coin
    end
  end

end