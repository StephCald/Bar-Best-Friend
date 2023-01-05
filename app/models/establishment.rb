class Establishment < ApplicationRecord
  has_many :reviews
  acts_as_favoritable
  self.inheritance_column = :_type_disabled

  enum type: {cafe:0, bar:1 , beach:2, park:3}
end
