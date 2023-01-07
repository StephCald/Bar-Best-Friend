class Establishment < ApplicationRecord
  has_many :reviews
  acts_as_favoritable
  self.inheritance_column = :_type_disabled

  enum type: {cafe:0, bar:1 , beach:2, park:3}

  validates :address, :phone, :name, :type, presence: true
  validates :phone, :name, :address, uniqueness: true
  validates :phone, length: { maximum: 12 }
  validates :name, length: { minimum: 1 }
  validates :phone, format: { with: /^(\+?\(61\)|\(\+?61\)|\+?61|\(0[1-9]\)|0[1-9])?( ?-?[0-9]){7,9}$/,
    message: "Only allows Australian numbers " }
end
