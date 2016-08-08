require_relative 'soda.rb'

class SodaMachine
  attr_reader :sodas, :cash, :soda_machine, :brand

  def initialize(hash = {})
    @sodas = hash[:sodas] # sodas = [pepsi, mountain_dew, coke_zero, second_pepsi]
    @cash = hash[:cash] # cash = 1.00
  end

  def current_inventory_count
  # return the number of sodas it contains.
    @sodas.count # [pepsi, mountain_dew, coke_zero, second_pepsi].count
  end

  def find_soda(soda_brand)
  # find a single soda with a given brand
    sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      end
    end
    nil
  end

  def sell(soda_brand)
  # A soda machine will be able to sell a soda with a given brand. When a soda is sold, it should be removed from the soda machine and the price of the soda should be added to the soda machine's cash

  found_soda = find_soda(soda_brand)
    if found_soda
      @cash += found_soda.price
      @sodas.delete(found_soda)
    end
    found_soda
  end
end

# :soda_machine = (sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00)
# :pepsi = (brand: 'Pepsi', price: 0.65)
# :mountain_dew = (brand: 'Mountain Dew', price: 0)
# :coke_zero = (brand: 'Coke Zero', price: 1.00)
# :second_pepsi = (brand: 'Pepsi', price: 0.65)
