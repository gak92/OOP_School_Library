require 'securerandom'

class Book
  attr_accessor :title, :author
  attr_reader :id, :rentals

  def initialize(title, author)
    @id = SecureRandom.uuid
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rental.push(rental)
    rental.book = self
  end
end
