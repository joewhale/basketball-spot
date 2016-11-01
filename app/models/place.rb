class Place < ActiveRecord::Base
  belongs_to :user

  geocoded_by :address
  after_validation :geocode

  validates :name, length: {minimum: 3}
  validates :address, length: {minimum: 5}
  validates :description, length: {minimum: 9}
end
