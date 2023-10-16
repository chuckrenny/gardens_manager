require 'rails_helper'

RSpec.describe Plant, type: :feature do
  before :each do
    load_test_data
  end

  # US 3
  it "displays each plant and its attributes in the system" do
    visit "/plants"

    expect(page).to have_content(@plant1.name)
    expect(page).to have_content(@plant1.height)
    expect(page).to have_content(@plant1.flowering)
    expect(page).to have_content(@plant2.name)
    expect(page).to have_content(@plant3.name)
    expect(page).to have_content(@plant4.name)
  end

  # US 9
  it "displays a link header and when clicked it redirects to the Gardens Index Page" do
    visit "/plants" 

    expect(page).to have_link("Gardens Index")

    click_link("Gardens Index")

    expect(current_path).to eq("/gardens")
  end

  # US 15
  it "only displays records that are true for flowering attribute(boolean column)" do
    visit "/plants"

    expect(page).to have_content("#{@plant2.name}")
    expect(page).to have_content("#{@plant3.name}")
    expect(page).to have_content("#{@plant4.name}")
  end
end