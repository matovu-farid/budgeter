require 'rails_helper'

RSpec.describe "purchases/edit", type: :view do
  before(:each) do
    @purchase = assign(:purchase, Purchase.create!(
      amount: 1.5,
      category: nil,
      author: nil
    ))
  end

  it "renders the edit purchase form" do
    render

    assert_select "form[action=?][method=?]", purchase_path(@purchase), "post" do

      assert_select "input[name=?]", "purchase[amount]"

      assert_select "input[name=?]", "purchase[category_id]"

      assert_select "input[name=?]", "purchase[author_id]"
    end
  end
end
