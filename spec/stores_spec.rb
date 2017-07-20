require "rails_helper"

RSpec.feature "Stores", :type => :feature do
  scenario "User creates a new store" do
    visit "/stores/new"

    fill_in "Name", :with => "My store"
    click_button "Create Store"

    expect(page).to have_text("Store was successfully created.")
  end
end