require 'rails_helper'

RSpec.describe "purchases/new", type: :view do
  before(:each) do
    assign(:purchase, Purchase.new(
      amount: 1.5,
      category: nil,
      author: nil
    ))
  end

  it "renders new purchase form" do
    render

    assert_select "form[action=?][method=?]", purchases_path, "post" do

      assert_select "input[name=?]", "purchase[amount]"

      assert_select "input[name=?]", "purchase[category_id]"

      assert_select "input[name=?]", "purchase[author_id]"
    end
  end
end
