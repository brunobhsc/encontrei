require 'rails_helper'

RSpec.describe "store_types/new", type: :view do
  before(:each) do
    assign(:store_type, StoreType.new(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new store_type form" do
    render

    assert_select "form[action=?][method=?]", store_types_path, "post" do

      assert_select "input#store_type_name[name=?]", "store_type[name]"

      assert_select "input#store_type_description[name=?]", "store_type[description]"
    end
  end
end
