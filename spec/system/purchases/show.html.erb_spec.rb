require 'rails_helper'

RSpec.describe 'purchases/show', type: :system do
  let(:test_user) { create :user }
  let(:test_category) { create :category, user: test_user }
  let(:test_purchase) { create :purchase, author: test_user, category: test_category }

  before do
    driven_by(:rack_test)
    sign_in test_user
    visit category_purchase_url(id: test_purchase.id, category_id: test_category.id)
  end

  it 'renders the Show purchase title' do
    expect(page).to have_content('Details')
  end
  it 'renders a link back to purchases page' do
    expect(page).to have_css('#back_to_purchase_home')
  end
  it 'Should lead bach to purchases page' do
    page.find('#back_to_purchase_home').click
    expect(current_path).to eql(category_purchases_path(test_category))
  end
end
