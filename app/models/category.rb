class Category < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :purchases
  validates :name, presence: true
  validates :icon, presence: true
end
