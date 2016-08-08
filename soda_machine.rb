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
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      else
        return nil
      end
    end
  end

  def sell(soda_brand)
    soda_found = false
    @sodas.each do |soda|
      if soda.brand == soda_brand
        soda_not_found = soda_not_found || soda.brand == soda_brand
        @cash += soda.price
        @sodas.delete(soda)
      end
    end
    return nil if not soda_found
  end

end
