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
    expect(page).to have_content(@plant5.name)
    expect(page).to have_content(@plant6.name)
  end
end