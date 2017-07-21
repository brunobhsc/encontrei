require 'rails_helper'

RSpec.describe "store_types/show", type: :view do
  before(:each) do
    @store_type = assign(:store_type, StoreType.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
