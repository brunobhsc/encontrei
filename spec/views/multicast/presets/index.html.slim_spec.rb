require 'rails_helper'

RSpec.describe "multicast/presets/index", type: :view do
  before(:each) do
    assign(:multicast_presets, [
      Multicast::Preset.create!(
        :description => "Description",
        :from => "From",
        :from_name => "From Name",
        :reply_to => "Reply To",
        :preview_to => "Preview To",
        :subject => "Subject",
        :body_template => nil,
        :with_attachment => false,
        :attachment_template => nil,
        :pdf_convertion => false,
        :pdf_with_password => false,
        :pdf_password_template => "Pdf Password Template",
        :cost_centre => nil
      ),
      Multicast::Preset.create!(
        :description => "Description",
        :from => "From",
        :from_name => "From Name",
        :reply_to => "Reply To",
        :preview_to => "Preview To",
        :subject => "Subject",
        :body_template => nil,
        :with_attachment => false,
        :attachment_template => nil,
        :pdf_convertion => false,
        :pdf_with_password => false,
        :pdf_password_template => "Pdf Password Template",
        :cost_centre => nil
      )
    ])
  end

  it "renders a list of multicast/presets" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => "From Name".to_s, :count => 2
    assert_select "tr>td", :text => "Reply To".to_s, :count => 2
    assert_select "tr>td", :text => "Preview To".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Pdf Password Template".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
