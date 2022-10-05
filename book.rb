require 'securerandom'

class Book
  attr_accessor :title, :author, :id
  attr_reader :rentals

  def initialize(title, author)
    @id = ''
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(rental)
    @rental.push(rental)
    rental.book = self
  end
end
