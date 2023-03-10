class Rating < ApplicationRecord
  belongs_to :rateable, polymorphic: true

  validates :rating, inclusion: { in: 1..5} 

  scope :good_rating, -> { where('rating >= 4') }
  scope :average_rating, -> { where('rating < 4') }
  default_scope { order(name: :asc) }
end
