require 'rails_helper'

RSpec.describe "buy_and_keeps/index", type: :view do
  before(:each) do
    assign(:buy_and_keeps, [
      BuyAndKeep.create!(
        :title => "Title",
        :cost => 1.5
      ),
      BuyAndKeep.create!(
        :title => "Title",
        :cost => 1.5
      )
    ])
  end

  it "renders a list of buy_and_keeps" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
