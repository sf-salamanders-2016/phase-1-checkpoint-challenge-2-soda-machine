# require 'soda'
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.each do |i|
      if i.brand == soda_brand
        return i
      else
        return nil
      end
    end
  end

  def sell(soda_brand)
    if find_soda(soda_brand) == nil
      nil
    else
      @sodas = @sodas - [soda_brand]
      add_price(soda_brand)
    end
  end
#subtract brand name from soda machine
#add price to soda machine cash

  private

  def add_price(soda_brand)
    @cash = soda_brand.price + @cash
    # @cash
  end

end



# machine = SodaMachine.new([pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00)
# machine.sell(pepsi)
# p machine.soda
