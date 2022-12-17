class Review < ApplicationRecord
  belongs_to :user
  belongs_to :establishment

  has_many :review_tags
end
