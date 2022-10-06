require 'spec_helper'

describe Rental do
  before :each do
    @rental = Rental.new('2022-10-06', Student.new(20, 'ushindi'), Book.new('Game of Thrones', 'George Martin'))
  end

  describe '#new' do
    it 'takes three parameters and returns a Rental object' do
      @rental.should be_an_instance_of Rental
    end
  end

  describe '#date' do
    it 'returns the correct date' do
      @rental.date.should eql '2022-10-06'
    end
  end

  describe '#person' do
    it 'return person object' do
      expect(@rental.person).to be_an(Person)
    end
  end

  describe '#book' do
    it 'return book object' do
      @rental.book.should be_an_instance_of Book
    end
  end
end
