require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
  end

  def find_soda(soda_brand) 
    self.sodas.each do |soda| 
      if soda.brand == soda_brand
        return soda
      else
        return nil
      end
    end
  end

  def sell(soda_brand)
    if find_soda(soda_brand) != nil
      #find soda price
      current_soda = self.sodas.select {|soda| soda.brand == soda_brand}

      #add to cash
      self.cash += current_soda.price

      #remove from machine
      self.sodas.delete(current_soda)
    end
  end

end

pepsi = Soda.new(brand: 'Pepsi', price: 0.65)
mountain_dew = Soda.new(brand: 'Mountain Dew', price: 0.75)
coke_zero = Soda.new(brand: 'Coke Zero', price: 1.00)
second_pepsi = Soda.new(brand: 'Pepsi', price: 0.65)

mac = SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00)

