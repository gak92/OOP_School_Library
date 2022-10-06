require 'spec_helper'

describe Classroom do
  before :each do
    @classroom = Classroom.new('Grade 11')
  end

  describe '#new' do
    it 'takes one parameter label of classroom and returns a classroom object' do
      @classroom.should be_an_instance_of Classroom
    end
  end

  describe '#label' do
    it 'returns the correct label' do
      @classroom.label.should eql 'Grade 11'
    end
  end

  describe '#students' do
    it 'students should return an empty array' do
      @classroom.students.should eql []
    end
  end

  describe '#students' do
    it 'add the student object in the @students' do
      @classroom.add_student(Student.new(20, 'ushindi'))
      @classroom.students.length.should eql 1
    end
  end
end
