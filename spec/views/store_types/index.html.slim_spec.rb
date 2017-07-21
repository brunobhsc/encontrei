require 'rails_helper'

RSpec.describe "store_types/index", type: :view do
  before(:each) do
    assign(:store_types, [
      StoreType.create!(
        :name => "Name",
        :description => "Description"
      ),
      StoreType.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of store_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
