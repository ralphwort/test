require 'rails_helper'

RSpec.describe "calls/index", type: :view do
  before(:each) do
    assign(:calls, [
      Call.create!(
        :duration => 1,
        :cost => 1.5
      ),
      Call.create!(
        :duration => 1,
        :cost => 1.5
      )
    ])
  end

  it "renders a list of calls" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
