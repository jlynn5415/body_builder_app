require 'rails_helper'

RSpec.describe "tests/index", type: :view do
  before(:each) do
    assign(:tests, [
      Test.create!(
        :login => "Login",
        :notes => "Notes"
      ),
      Test.create!(
        :login => "Login",
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of tests" do
    render
    assert_select "tr>td", :text => "Login".to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
