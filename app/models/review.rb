class Review < ApplicationRecord
  belongs_to :user
  belongs_to :establishment
  validates :comments, presence: false, allow_blank: true
  validates :user, presence: true
  validates :establishment, presence: true

  has_many :review_tags, dependent: :delete_all
  has_many :tags, through: :review_tags, dependent: :delete_all

  accepts_nested_attributes_for :review_tags
end
