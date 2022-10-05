require_relative 'input_reader'
require_relative 'loader'
require_relative 'saver'
require_relative 'creator'
require_relative 'lister'

class App
  attr_accessor :people, :books, :rentals

  def initialize
    @people = Loader.people
    @books = Loader.books
    @rentals = Loader.rentals(@people, @books)
  end

  def run
    puts 'Welcome to School Library App!'
    loop do
      main_menu

      print 'Enter your option: '
      input = InputReader.read_input

      if input == '7'
        puts 'Thanks for using the app'
        Saver.people(@people)
        Saver.books(@books)
        Saver.rentals(@rentals)
        break
      end
      options(input)
    end
  end

  def main_menu
    puts ''
    puts '-------------------------------------------'
    puts 'Please choose an option by enter a number: '
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  def options(input)
    case input
    when '1'
      Lister.books(@books)
    when '2'
      Lister.people(@people)
    when '3'
      Creator.people(people)
    when '4'
      @books.push(Creator.book)
      puts 'Book created successfully'
    when '5'
      @rentals.push(Creator.rental(@people, @books))
      puts 'Rental created successfully'
    when '6'
      Lister.rentals_by_person_id(@people, @rentals)
    else
      puts 'Please choose a valid option'
    end
  end
end
