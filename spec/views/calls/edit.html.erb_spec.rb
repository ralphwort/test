require 'rails_helper'

RSpec.describe "calls/edit", type: :view do
  before(:each) do
    @call = assign(:call, Call.create!(
      :duration => 1,
      :cost => 1.5
    ))
  end

  it "renders the edit call form" do
    render

    assert_select "form[action=?][method=?]", call_path(@call), "post" do

      assert_select "input#call_duration[name=?]", "call[duration]"

      assert_select "input#call_cost[name=?]", "call[cost]"
    end
  end
end
