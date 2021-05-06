require "rails_helper"
require_relative "../support/devise"

RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Sign up")
  end
end