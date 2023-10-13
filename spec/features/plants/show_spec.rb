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
end