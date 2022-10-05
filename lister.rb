require_relative 'input_reader'

class Lister
  class << self
    def books(list)
      if list.empty?
        puts 'Book list is empty'
      else
        puts 'List of all Books'
        list.each_with_index { |book, index| puts "#{index}) Title: #{book.title} Author: #{book.author}" }
      end
    end

    def people(list)
      if list.empty?
        puts 'Person list is empty'
      else
        puts 'List of all People'
        list.each_with_index do |person, index|
          puts "#{index}) [#{person.class}] ID:#{person.id} Name: #{person.name} Age:#{person.age}"
        end
      end
    end

    def rentals_by_person_id(people, rentals)
      puts 'List of all rentals by person id'

      puts 'Select a person from the following list by ID'
      people(people)
      id = InputReader.read_input

      puts 'Rentals: '
      rentals.each do |rental|
        if rental.person.id == id
          puts "Date: #{rental.date} - Book: #{rental.book.title} - Author: #{rental.book.author}"
        end
      end
    end
  end
end
