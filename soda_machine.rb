class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    if @sodas.brand.inlcude?(soda_brand)
      return soda_brand
    end
  end

  def sell(soda_brand)
  end

end
