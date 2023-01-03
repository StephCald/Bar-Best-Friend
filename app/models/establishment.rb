class Establishment < ApplicationRecord
  has_many :reviews
  acts_as_favoritable
  self.inheritance_column = :_type_disabled

end
