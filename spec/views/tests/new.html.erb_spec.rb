require 'rails_helper'

RSpec.describe "tests/new", type: :view do
  before(:each) do
    assign(:test, Test.new(
      :login => "MyString",
      :notes => "MyString"
    ))
  end

  it "renders new test form" do
    render

    assert_select "form[action=?][method=?]", tests_path, "post" do

      assert_select "input#test_login[name=?]", "test[login]"

      assert_select "input#test_notes[name=?]", "test[notes]"
    end
  end
end
