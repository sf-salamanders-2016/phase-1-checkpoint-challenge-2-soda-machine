require_relative 'soda'
class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas] #gives array of sodas from Soda class
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    idx = 0
    brand = ''
    while idx < @sodas.length
      if @sodas[idx].brand == soda_brand
        return @sodas[idx]
      end
      idx +=1
    end
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
    if soda
      @cash += soda.price
      @sodas.delete(soda)
    end
  end
end


soda = SodaMachine.new()


