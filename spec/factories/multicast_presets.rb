FactoryGirl.define do
  factory :multicast_preset, class: 'Multicast::Preset' do
    description "MyString"
    from "MyString"
    from_name "MyString"
    reply_to "MyString"
    preview_to "MyString"
    subject "MyString"
    body_template nil
    with_attachment false
    attachment_template nil
    pdf_convertion false
    pdf_with_password false
    pdf_password_template "MyString"
    cost_centre nil
  end
end
