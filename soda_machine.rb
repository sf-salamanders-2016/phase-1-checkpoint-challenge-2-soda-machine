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
    soda_index = @sodas.index { |soda| soda.brand == soda_brand }
    if soda_index
      return @sodas[soda_index]
    else
      return nil
    end
  end

# Note:  The code commented out will delete all copies of a specific soda
# in the machine.  I assume we only want to delete one of them,
  def sell(soda_brand)
  #   soda = find_soda(soda_brand)
  #   if soda
  #     @sodas.delete(soda)
  #     @cash += soda.price
  #   end
    soda_index = @sodas.index { |soda| soda.brand == soda_brand }
    if soda_index
      @cash += @sodas[soda_index].price
      @sodas.delete_at(soda_index)
    end
  end
end

