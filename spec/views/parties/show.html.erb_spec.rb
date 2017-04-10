require 'rails_helper'

RSpec.describe "parties/show", type: :view do
  before(:each) do
    @party = assign(:party, Party.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
