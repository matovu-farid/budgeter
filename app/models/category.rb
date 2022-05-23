class Category < ApplicationRecord
  belongs_to :user
  has_many :purchases
  validates :name, presence: true
  validates :icon, presence: true
end
