require 'rails_helper'

RSpec.describe "rentals/new", type: :view do
  before(:each) do
    assign(:rental, Rental.new(
      :title => "MyString",
      :cost => 1.5
    ))
  end

  it "renders new rental form" do
    render

    assert_select "form[action=?][method=?]", rentals_path, "post" do

      assert_select "input#rental_title[name=?]", "rental[title]"

      assert_select "input#rental_cost[name=?]", "rental[cost]"
    end
  end
end
