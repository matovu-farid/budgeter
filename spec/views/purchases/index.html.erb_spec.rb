require 'rails_helper'

RSpec.describe 'purchases/index', type: :view do
  before(:each) do
    assign(:purchases, [
             Purchase.create!(
               amount: 2.5,
               category: nil,
               author: nil
             ),
             Purchase.create!(
               amount: 2.5,
               category: nil,
               author: nil
             )
           ])
  end

  it 'renders a list of purchases' do
    render
    assert_select 'tr>td', text: 2.5.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
