class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :developer

  validates :reservation_date, presence: true
  validates :city, presence: true
end
