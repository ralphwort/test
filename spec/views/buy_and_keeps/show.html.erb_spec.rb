require 'rails_helper'

RSpec.describe "buy_and_keeps/show", type: :view do
  before(:each) do
    @buy_and_keep = assign(:buy_and_keep, BuyAndKeep.create!(
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
