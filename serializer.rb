require_relative 'student'
require 'json'

class Serializer

  def self.to_string(arr)
    JSON.generate(arr.map { |person| { id: person.id, age: person.age, name: person.name, parent_permission: person.parent_permission} })
  end

  def self.to_object(arr)
    arr.map { |hash| [hash.class].new(hash.age,hash.name,hash.parent_permission) }
  end
end

# test = Serializer.to_string([Student.new(29, 'Durban', parent_permission: false)])

# print test.class
# ruby = JSON.parse(test)
# puts ruby.class
# puts Serializer.to_object(JSON.parse(test))
# puts JSON.parse('[{"foo": 0, "bar": 1}, ["baz", 2]]')
#
# # '[{"foo": 0, "bar": 1}, ["baz", 2]]'
# json = '["foo", 1, 1.0, 2.0e2, true, false, null]'
# puts json.class
# ruby = JSON.parse(json)
# puts ruby # => ["foo", 1, 1.0, 200.0, true, false, nil]
# puts ruby.class # => Array