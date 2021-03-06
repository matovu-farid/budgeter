require 'rails_helper'

RSpec.describe 'purchases/index', type: :system do
  let(:test_user) { create :user }
  let(:test_category) { create :category }

  before do
    driven_by(:rack_test)
    sign_in test_user
    visit category_purchases_url(test_category)
  end

  it 'renders the purchases title' do
    expect(page).to have_content('Purchases')
  end
  it 'renders a link to a Add purchase page' do
    expect(page).to have_link('Add purchase')
  end
  it 'clicking link should lead to Add purchase page' do
    click_link('Add purchase')
    expect(current_path).to eql(new_category_purchase_path(test_category))
  end
end
