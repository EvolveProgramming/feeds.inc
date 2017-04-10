require 'rails_helper'

RSpec.describe "parties/new", type: :view do
  before(:each) do
    assign(:party, Party.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new party form" do
    render

    assert_select "form[action=?][method=?]", parties_path, "post" do

      assert_select "input#party_name[name=?]", "party[name]"

      assert_select "textarea#party_description[name=?]", "party[description]"
    end
  end
end
