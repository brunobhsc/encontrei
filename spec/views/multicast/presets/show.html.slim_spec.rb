require 'rails_helper'

RSpec.describe "multicast/presets/show", type: :view do
  before(:each) do
    @multicast_preset = assign(:multicast_preset, Multicast::Preset.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/From/)
    expect(rendered).to match(/From Name/)
    expect(rendered).to match(/Reply To/)
    expect(rendered).to match(/Preview To/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Pdf Password Template/)
    expect(rendered).to match(//)
  end
end
