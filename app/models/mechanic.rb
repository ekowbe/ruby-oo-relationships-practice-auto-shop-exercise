class Mechanic

  attr_reader :name, :specialty


  def initialize(name, specialty)
    @name = name
    @specialty = specialty
  end

  def self.all
    Car.all.map{|car| car.mechanic}.uniq
  end

  def cars
    Car.all.select{|car| car.mechanic == self}
  end

  def car_owners
    cars.map{|car| car.car_owner}.uniq
  end

  def car_owners_names
    car_owners.map{|car_owner| car_owner.name }
  end



end
