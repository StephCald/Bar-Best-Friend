class Review < ApplicationRecord
  belongs_to :user
  belongs_to :establishment
  validates :comments, presence: true

  has_many :review_tags
  has_many :tags, through: :review_tags

  accepts_nested_attributes_for :review_tags
end
