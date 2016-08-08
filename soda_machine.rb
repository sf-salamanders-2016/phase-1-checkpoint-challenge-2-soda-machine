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
    @sodas.each do |item|
      if item.brand == soda_brand
        return item
      else
        return nil
      end
    end
  end

  def sell(soda_brand)
    @sodas.each do |item|
      if item.brand == soda_brand
        @cash += item.price
        return @sodas.delete(item)
      end
    end
    return nil
  end

end





