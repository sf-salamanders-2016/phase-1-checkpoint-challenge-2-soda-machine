require_relative "soda"

class SodaMachine < Soda
  attr_reader :sodas, :cash
  attr_writer :cash

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
    @sodas.each do |soda|
      if soda.brand == soda_brand
        @cash += soda.price
      else
        return nil
      end
    end
  end

end
