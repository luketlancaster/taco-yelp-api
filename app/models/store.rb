class Store < ActiveRecord::Base
  validates :places_id, :rating, presence: true
end
