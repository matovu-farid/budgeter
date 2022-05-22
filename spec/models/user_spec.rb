require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :categories }
  it { should have_many :purchases }
  it { should validate_presence_of :name }
end
