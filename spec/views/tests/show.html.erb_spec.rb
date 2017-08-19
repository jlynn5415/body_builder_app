require 'rails_helper'

RSpec.describe "tests/show", type: :view do
  before(:each) do
    @test = assign(:test, Test.create!(
      :login => "Login",
      :notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Login/)
    expect(rendered).to match(/Notes/)
  end
end
