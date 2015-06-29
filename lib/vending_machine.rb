class VendingMachine

  attr_reader :display

  def initialize
    @display = 'INSERT COIN'
  end

  def insert(coin)
    if ['5', '10', '25'].include? coin
      @display = "#{coin} cents"
    end
  end

  def return
    '1'
  end

end