require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'
class Creator
  class << self
    def input_age_name
      puts 'Creating a Person ...'
      print 'Age: '
      age = InputReader.read_integer

      print 'Name: '
      name = InputReader.read_input
      [age, name]
    end

    def student
      age, name = input_age_name
      print 'Has parent permission? [Y/N]: '
      parent_permission = InputReader.read_input_upcase
      parent_permission = parent_permission == 'Y'

      student = Student.new(age, name, parent_permission: parent_permission)
      student.id = SecureRandom.uuid
      student
    end

    def teacher
      age, name = input_age_name
      print 'Specialization: '
      specialization = InputReader.read_input

      teacher = Teacher.new(age, specialization, name)
      teacher.id = SecureRandom.uuid
      teacher
    end

    def book
      puts 'Creating a book ... '
      print 'Book Title: '
      title = InputReader.read_input

      print 'Book Author: '
      author = InputReader.read_input

      book = Book.new(title, author)
      book.id = SecureRandom.uuid
      book
    end
    def people(list)
      puts 'Creating a Person'
      print 'Do you want to create a student(1) or a teacher(2)? [Enter the number]: '
      input = InputReader.read_input

      case input
      when '1'
        list.push(student)
        puts 'Student  created successfully'
      when '2'
        list.push(teacher)
        puts 'Teacher  created successfully'
      else
        puts 'Input not valid. Please enter a valid input (1) or (2)'
      end
    end
    def rental(people,books)
      puts 'Creating a rental ... '

      puts 'Select a book from the following list by a number'
      Lister.books(books)
      book_index = InputReader.read_integer

      puts 'Select a person from the following list by a number (not from id)'
      Lister.people(people)
      person_index = InputReader.read_integer

      print 'Date: '
      date = InputReader.read_input

      Rental.new(date, people[person_index], books[book_index])
    end
  end
end
