class Api::V1::Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :developer
end
