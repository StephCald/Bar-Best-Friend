class Establishment < ApplicationRecord
  has_many :reviews
  acts_as_favoritable
  self.inheritance_column = :_type_disabled

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  enum type: { cafe: 0, bar: 1, beach: 2, park: 3 }
end
