class CarOwner

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all
    Car.all.map{|car| car.car_owner}.uniq
  end

  def cars
    Car.all.select{|car| car.car_owner == self}
  end

  def mechanics
    cars.map{|car| car.mechanic}.uniq
  end

  def self.average_number_of_cars
    #total number of cars/total number of owner
    Car.all.count/self.class.all.count
  end
end
