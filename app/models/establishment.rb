class Establishment < ApplicationRecord
  has_many :reviews
  acts_as_favoritable

end
