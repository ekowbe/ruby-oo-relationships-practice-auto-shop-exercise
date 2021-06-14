require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

Ekow = CarOwner.new("Ekow")
Peasah = Mechanic.new("Peasah", "exquisite")
car1 = Car.new("chevy", "2008", "exquisite", Ekow, Peasah)
car2 = Car.new("ford", "2009", "exquisite", Ekow, Peasah)


binding.pry
