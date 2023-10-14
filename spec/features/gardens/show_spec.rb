require 'rails_helper' 

RSpec.describe Garden, type: :feature do
  before :each do
    load_test_data
  end

  # US 2
  it "displays all Garden's attributes" do
    visit "/gardens/#{@garden1.id}"

    expect(page).to have_content("#{@garden1.name} Garden")
    expect(page).to have_content("Total Species: #{@garden1.species}")
    expect(page).to have_content("Recently Watered: #{@garden1.watered}")
  end

  # US 7
  it "displays the number of plants associated with the specific garden ID" do
    visit "/gardens/#{@garden1.id}"

    expect(page).to have_content("Total Associated Plants: #{@garden1.associated_plants}")
  end
end