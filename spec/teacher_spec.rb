require 'spec_helper'

describe Teacher do
  before :each do
    @teacher = Teacher.new(30, 'software engineer', 'Ali')
  end

  describe '#new' do
    it 'takes three parameters and one optional and returns a Teacher object' do
      @teacher.should be_an_instance_of Teacher
    end
  end

  describe '#age' do
    it 'returns the correct age' do
      @teacher.age.should eql  30
    end
  end
  describe '#name' do
    it 'returns the correct name' do
      @teacher.name.should eql 'Ali'
    end
  end
  describe '#specialization' do
    it 'returns the correct specialization' do
      @teacher.specialization.should eql 'software engineer'
    end
  end
  describe '#parent_permission' do
    it 'returns the default parent_permission' do
      @teacher.parent_permission.should eql true
    end
  end
end
