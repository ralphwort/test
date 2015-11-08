require 'rails_helper'

RSpec.describe "calls/show", type: :view do
  before(:each) do
    @call = assign(:call, Call.create!(
      :duration => 1,
      :cost => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
  end
end
