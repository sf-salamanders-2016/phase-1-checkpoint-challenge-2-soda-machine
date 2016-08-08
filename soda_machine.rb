require 'soda'
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
    @soda.include?(soda_brand) ? soda_brand : nil
  end

  def sell(soda_brand)
    @sodas = @sodas - [soda_brand]
    add_price

  end
#subtract brand name from soda machine
#add price to soda machine cash

  private

  def add_price(soda_brand)
    @cash = @soda[soda_brand].price + @cash
    @cash
  end


end
