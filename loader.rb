require_relative 'serializer'
require 'json'
require 'securerandom'
require_relative 'book'
require_relative 'rental'

class Loader
  class << self
    def people
      data = []
      file_name = './data/people.json'

      if File.exist?(file_name)
        file_data = JSON.parse(File.read(file_name))
        data = Serializer.to_object(file_data)
      end

      data
    end

    def books
      data = []
      file_name = './data/books.json'

      if File.exist?(file_name) && File.read(file_name) != ''
        file_data = JSON.parse(File.read(file_name))
        file_data.each do |book|
          new_book = Book.new(book['title'], book['author'])
          new_book.id = book['id']
          data.push(new_book)
        end
      end
      data
    end

    def rentals(people, books)
      data = []
      file_name = './data/rentals.json'

      if File.exist?(file_name) && File.read(file_name) != ''
        file_data = JSON.parse(File.read(file_name))
        file_data.each do |rental|
          person_obj = people.select do |person|
            person.id == rental['person']
          end
          book_obj = books.select do |book|
            book.id == rental['book']
          end
          data.push(Rental.new(rental['date'], person_obj[0], book_obj[0]))
        end
      end

      data
    end
  end
end
