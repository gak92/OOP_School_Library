require 'spec_helper'

describe Person do
  before :each do
    @person = Person.new(27, 'Michael jordan')
  end

  describe '#new' do
    it 'takes two parameters and one optional and returns a Person object' do
      @person.should be_an_instance_of Person
    end
  end

  describe '#age' do
    it 'returns the correct age' do
      @person.age.should eql 27
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      @person.name.should eql 'Michael jordan'
    end
  end
  describe '#parent_permission' do
    it 'returns the default parent_permission' do
      @person.parent_permission.should eql true
    end
  end
end
