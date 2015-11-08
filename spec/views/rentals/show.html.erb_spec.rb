require 'rails_helper'

RSpec.describe "rentals/show", type: :view do
  before(:each) do
    @rental = assign(:rental, Rental.create!(
      :title => "Title",
      :cost => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1.5/)
  end
end
