require 'spec_helper'

describe Student do
  before :each do
    @student = Student.new(20, 'ushindi')
  end

  describe '#new' do
    it 'takes two parameters and one optional and returns a Student object' do
      @student.should be_an_instance_of Student
    end
  end

  describe '#age' do
    it 'returns the correct age' do
      @student.age.should eql 20
    end
  end

  describe '#name' do
    it 'returns the correct name' do
      @student.name.should eql 'ushindi'
    end
  end
  describe '#parent_permission' do
    it 'returns the default parent_permission' do
      @student.parent_permission.should eql true
    end
  end
end
