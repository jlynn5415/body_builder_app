require 'rails_helper'

RSpec.describe "tests/edit", type: :view do
  before(:each) do
    @test = assign(:test, Test.create!(
      :login => "MyString",
      :notes => "MyString"
    ))
  end

  it "renders the edit test form" do
    render

    assert_select "form[action=?][method=?]", test_path(@test), "post" do

      assert_select "input#test_login[name=?]", "test[login]"

      assert_select "input#test_notes[name=?]", "test[notes]"
    end
  end
end
