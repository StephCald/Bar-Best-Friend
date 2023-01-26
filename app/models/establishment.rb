class Establishment < ApplicationRecord
  validates :address, :phone, :name, :location_type, presence: true
  validates :phone, :name, :address, uniqueness: true
  validates :phone, length: { in: 8..14}
  validates :name, length: { minimum: 1 }
  validates :phone, format: {
    with: /\A(\+?\(61\)|\(\+?61\)|\+?61|\(0[1-9]\)|0[1-9])?( ?-?[0-9]){7,9}\z/,
    message: "Only allows Australian numbers"
  }
  self.inheritance_column = :_type_disabled

  has_many :reviews, dependent: :destroy
  acts_as_favoritable
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  enum location_type: { cafe: 0, bar: 1, beach: 2, park: 3, trail: 4 }

end
