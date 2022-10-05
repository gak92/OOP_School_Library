require_relative 'student'
require 'json'

class Serializer
  def self.to_string(arr)
    JSON.generate(arr.map do |person|
                    { id: person.id, age: person.age, name: person.name, parent_permission: person.parent_permission }
                  end)
  end

  def self.to_object(arr)
    arr.map { |person| Student.new(person['age'], person['name'], parent_permission: person['parent_permission']) }
  end
end
