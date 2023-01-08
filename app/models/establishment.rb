class Establishment < ApplicationRecord
  validates :address, :phone, :name, :location_type, presence: true
  validates :phone, :name, :address, uniqueness: true
  validates :phone, length: { in: 8..12}
  validates :name, length: { minimum: 1 }
  validates :phone, format: {
    with: /\A(\+?\(61\)|\(\+?61\)|\+?61|\(0[1-9]\)|0[1-9])?( ?-?[0-9]){7,9}\z/,
    message: "Only allows Australian numbers "
  }


  has_many :reviews
  acts_as_favoritable
  enum location_type: {cafe:0, bar:1 , beach:2, park:3}

end
