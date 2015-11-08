require 'rails_helper'

RSpec.describe "rentals/edit", type: :view do
  before(:each) do
    @rental = assign(:rental, Rental.create!(
      :title => "MyString",
      :cost => 1.5
    ))
  end

  it "renders the edit rental form" do
    render

    assert_select "form[action=?][method=?]", rental_path(@rental), "post" do

      assert_select "input#rental_title[name=?]", "rental[title]"

      assert_select "input#rental_cost[name=?]", "rental[cost]"
    end
  end
end
