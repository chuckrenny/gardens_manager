require 'rails_helper'

RSpec.describe Plant, type: :feature do
  before :each do
    load_test_data
  end

  # US 4
  it "displays the specific plant ID and its attributes" do
    visit "/plants/#{@plant1.id}"

    expect(page).to have_content("#{@plant1.name}")
    expect(page).to have_content("Height(inches): #{@plant1.height}")
    expect(page).to have_content("Flowering: #{@plant1.flowering}")
    expect(page).to_not have_content("#{@plant2.name}")
  end

  # US 14
  it 'displays a link to a form to update a plant' do
    visit "/plants/#{@plant1.id}"

    expect(page).to have_link("Update Plant")

    click_link("Update Plant")

    expect(current_path).to eq("/plants/#{@plant1.id}/edit")

    fill_in "Name", with: "Blueberry Bush 2.0"
    fill_in "Height", with: "0"
    check "Flowering"
    click_on "Update Plant"

    expect(current_path).to eq("/plants/#{@plant1.id}")
    expect(page).to have_content("Blueberry Bush 2.0")
    expect(page).to have_content("Height(inches): 0")
    expect(page).to have_content("Flowering: true")
  end
end