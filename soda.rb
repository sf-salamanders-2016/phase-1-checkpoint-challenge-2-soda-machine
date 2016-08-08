class Soda
  attr_reader :brand, :price, :age

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
    @age = args[:age]
  end
end
