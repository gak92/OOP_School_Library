require_relative 'student'
require 'json'

class Serializer
  def self.to_string(arr)
    JSON.generate(arr.map do |person|
      if person.instance_of?(Student)
        { id: person.id, age: person.age, name: person.name,
          parent_permission: person.parent_permission }
      else
        { id: person.id, age: person.age, name: person.name, specialization: person.specialization }
      end
    end)
  end

  def self.to_object(arr)
    arr.map do |person|
      new_person = if person['specialization'].nil?
                     Student.new(person['age'], person['name'],
                                 parent_permission: person['parent_permission'])
                   else
                     Teacher.new(person['age'], person['specialization'], person['name'])
                   end
      new_person.id = person['id']
      new_person
    end
  end
end
