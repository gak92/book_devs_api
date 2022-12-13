class Developer < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true
  validates :image, presence: true
  validates :title, presence: true
  validates :salary_exp, presence: true, numericality: { greater_than: 0 }
  validates :rating
end
