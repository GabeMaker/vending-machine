class VendingMachine

  VALID_COINS = ['5', '10', '25']

  attr_reader :display, :coin_return

  def initialize
    self.display = 'INSERT COIN'
    self.total = 0
  end

  def insert(coin)
    if VALID_COINS.include? coin
      self.total += coin.to_i
      self.display = "#{@total} cents"
    else
      self.coin_return = coin
    end
  end

  protected

  attr_reader :total

  private

  attr_writer :display, :total, :coin_return

end