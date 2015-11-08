require 'rails_helper'

RSpec.describe "calls/new", type: :view do
  before(:each) do
    assign(:call, Call.new(
      :duration => 1,
      :cost => 1.5
    ))
  end

  it "renders new call form" do
    render

    assert_select "form[action=?][method=?]", calls_path, "post" do

      assert_select "input#call_duration[name=?]", "call[duration]"

      assert_select "input#call_cost[name=?]", "call[cost]"
    end
  end
end
