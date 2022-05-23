class Purchase < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'
  validates :name, presence: true
  validates :amount, presence: true
end
