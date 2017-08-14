require 'rails_helper'

RSpec.describe "multicast/presets/edit", type: :view do
  before(:each) do
    @multicast_preset = assign(:multicast_preset, Multicast::Preset.create!(
      :description => "MyString",
      :from => "MyString",
      :from_name => "MyString",
      :reply_to => "MyString",
      :preview_to => "MyString",
      :subject => "MyString",
      :body_template => nil,
      :with_attachment => false,
      :attachment_template => nil,
      :pdf_convertion => false,
      :pdf_with_password => false,
      :pdf_password_template => "MyString",
      :cost_centre => nil
    ))
  end

  it "renders the edit multicast_preset form" do
    render

    assert_select "form[action=?][method=?]", multicast_preset_path(@multicast_preset), "post" do

      assert_select "input#multicast_preset_description[name=?]", "multicast_preset[description]"

      assert_select "input#multicast_preset_from[name=?]", "multicast_preset[from]"

      assert_select "input#multicast_preset_from_name[name=?]", "multicast_preset[from_name]"

      assert_select "input#multicast_preset_reply_to[name=?]", "multicast_preset[reply_to]"

      assert_select "input#multicast_preset_preview_to[name=?]", "multicast_preset[preview_to]"

      assert_select "input#multicast_preset_subject[name=?]", "multicast_preset[subject]"

      assert_select "input#multicast_preset_body_template_id[name=?]", "multicast_preset[body_template_id]"

      assert_select "input#multicast_preset_with_attachment[name=?]", "multicast_preset[with_attachment]"

      assert_select "input#multicast_preset_attachment_template_id[name=?]", "multicast_preset[attachment_template_id]"

      assert_select "input#multicast_preset_pdf_convertion[name=?]", "multicast_preset[pdf_convertion]"

      assert_select "input#multicast_preset_pdf_with_password[name=?]", "multicast_preset[pdf_with_password]"

      assert_select "input#multicast_preset_pdf_password_template[name=?]", "multicast_preset[pdf_password_template]"

      assert_select "input#multicast_preset_cost_centre_id[name=?]", "multicast_preset[cost_centre_id]"
    end
  end
end
