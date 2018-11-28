require 'pry'
class Person
  
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
 
  def self.create(name)
    person = self.new
    person.name = name
    @@all << person
 
  end
end
 
Person.create("Ada Lovelace")
Person.create("Grace Hopper")

Person.all.each do |person|
  puts "#{person.name}"
end