require_relative 'soda'
require 'pry'

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
    @sodas.each { |soda| return soda if soda.brand == soda_brand }
    nil
  end

  def sell(soda_brand)
    # search the sodas for the soda_brand
    soda = find_soda(soda_brand)
    return nil if soda.nil?
    # delete the said soda
    @sodas.delete(soda)
    # add the soda price to the cash
    @cash += soda.price
  end

end






# @sodas.map do |soda|
#   @cash+= soda.price
#   if soda.brand == soda_brand
#     find_soda(soda_brand).delete(@sodas[index(soda_brand)])
#   else
#     return nil
#   end
# end
