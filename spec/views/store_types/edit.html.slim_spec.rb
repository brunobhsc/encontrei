require 'rails_helper'

RSpec.describe "store_types/edit", type: :view do
  before(:each) do
    @store_type = assign(:store_type, StoreType.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit store_type form" do
    render

    assert_select "form[action=?][method=?]", store_type_path(@store_type), "post" do

      assert_select "input#store_type_name[name=?]", "store_type[name]"

      assert_select "input#store_type_description[name=?]", "store_type[description]"
    end
  end
end
