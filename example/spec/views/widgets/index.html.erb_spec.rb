require 'rails_helper'

RSpec.describe "widgets/index", :type => :view do
  before(:each) do
    assign(:widgets, [Widget.create!(:name => "Name"),Widget.create!(:name => "Name")]) # its an array
  end

  it "renders a list of widgets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    expect(rendered).to match /Name/
  end
end
