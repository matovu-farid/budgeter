class Purchase < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'

  validates :amount, presence: true
  counter_culture :category, column_name: :total, delta_column: :amount
end
