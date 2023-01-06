class Review < ApplicationRecord
  belongs_to :user
  belongs_to :establishment
  validates :comments, presence: true

  has_many :review_tags
end
