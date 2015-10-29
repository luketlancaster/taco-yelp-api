class Store < ActiveRecord::Base
  has_many :comments
  validates :places_id, :rating, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :places_id, uniqueness: true
end
