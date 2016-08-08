class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    self.sodas.length # count length of array
  end

  def find_soda(soda_brand)
    position = self.sodas.index(soda_brand) # find the item in the array
    self.sodas[position].downcase
  end

  def sell(soda_brand)
    self.sodas.delete(soda_brand) # remove soda from machine
    p self['@cash']
  end

end

# A soda machine will be able to return the number of sodas it contains.
# This method should be called SodaMachine#current_inventory_count.

# A soda machine will be able to find a single soda with a given brand.
# This method will be called SodaMachine#find_soda.

# A soda machine will be able to sell a soda with a given brand.
# When a soda is sold, it should be removed from the soda machine and the price of the soda should be added to the soda machine's cash This method will be called SodaMachine#sell.

 machine = SodaMachine.new(sodas: ['pepsi', 'mountain_dew', 'coke_zero', 'second_pepsi'], cash: 1.00)

# p machine.current_inventory_count
# p machine.find_soda('pepsi')
# p machine.sell(mountain_dew)
p machine.sell('mountain_dew')
p machine
