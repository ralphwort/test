require 'rails_helper'

RSpec.describe "rentals/index", type: :view do
  before(:each) do
    assign(:rentals, [
      Rental.create!(
        :title => "Title",
        :cost => 1.5
      ),
      Rental.create!(
        :title => "Title",
        :cost => 1.5
      )
    ])
  end

  it "renders a list of rentals" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
