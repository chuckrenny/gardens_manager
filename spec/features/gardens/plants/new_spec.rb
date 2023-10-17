require 'rails_helper'

RSpec.describe 'Gardens Plants Application', type: :feature do
  before :each do
    load_test_data
  end

  # US 13
  it "displays a form to add a new plant object and redirects to Garden Plants Index page" do
    visit "/gardens/#{@garden1.id}/plants/new" 

    expect(page).to have_content("Add a New Plant")

    fill_in 'Name', with: 'Catnip Bush'
    fill_in 'Height', with: 8
    check 'Flowering'

    click_on 'Create Plant'

    expect(current_path).to eq("/gardens/#{@garden1.id}/plants")
    expect(page).to have_content("Catnip Bush")
    expect(page).to have_content("Height(inches): 8")
    expect(page).to have_content("Flowering: true")
  end
end