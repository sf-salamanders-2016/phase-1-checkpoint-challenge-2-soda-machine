class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
  end

  def find_soda(soda_brand)
    if sodas == true
      return soda_machine.find_soda(soda_brand)
    else
      return nil
    end
  end

  def sell(soda_brand)
  end

end

soda_machine = SodaMachine.new(sodas = {brand: 'Pepsi', price: 0.65})
