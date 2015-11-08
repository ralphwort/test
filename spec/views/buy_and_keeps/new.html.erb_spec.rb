require 'rails_helper'

RSpec.describe "buy_and_keeps/new", type: :view do
  before(:each) do
    assign(:buy_and_keep, BuyAndKeep.new(
      :title => "MyString",
      :cost => 1.5
    ))
  end

  it "renders new buy_and_keep form" do
    render

    assert_select "form[action=?][method=?]", buy_and_keeps_path, "post" do

      assert_select "input#buy_and_keep_title[name=?]", "buy_and_keep[title]"

      assert_select "input#buy_and_keep_cost[name=?]", "buy_and_keep[cost]"
    end
  end
end
