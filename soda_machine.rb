class SodaMachine
  attr_reader :soda, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.each do | brand |
      if brand.brand == soda_brand
        return brand
      end
    end
    nil
  end


  def sell(soda_brand)
   @sodas.each do | brand |
      if brand.brand == soda_brand
        @cash = brand.price
        @sodas.delete[brand]
      end
    end
    nil
  end

end


