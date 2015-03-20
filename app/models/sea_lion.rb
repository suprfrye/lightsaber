class SeaLion < ActiveRecord::Base
  validates :name, :location, :favorite_food, presence: true
end
