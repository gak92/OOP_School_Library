require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age, :parent_permission, :id
  attr_reader :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = ''
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.book = self
  end

  private

  def of_age?
    @age >= 18
  end
end
