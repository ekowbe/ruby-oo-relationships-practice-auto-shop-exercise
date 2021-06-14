class Car

  attr_reader :make, :model, :car_owner, :mechanic, :classification
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map{|car| car.classification}.uniq
  end

  def self.find_mechanics(classification)
    self.all.select{|car| car.classification == classification}.map{|car| car.mechanic}.uniq
  end

end
