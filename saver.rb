require_relative 'serializer'
require 'json'
class Saver
  class << self
    def people(list)
      file_name = './data/people.json'

      File.write(file_name, Serializer.to_string(list))
    end

    def books(list)
      file_name = './data/books.json'
      data = []

      list.each do |book|
        data.push({ id: book.id, title: book.title, author: book.author })
      end

      File.write(file_name, JSON.generate(data))
    end

    def rentals(list)
      file_name = './data/rentals.json'
      data = []

      list.each do |rental|
        data.push({ date: rental.date, person: rental.person.id, book: rental.book.id })
      end

      File.write(file_name, JSON.generate(data))
    end
  end
end
