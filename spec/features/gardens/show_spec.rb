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
end

# User Story 2, Garden Show 

# Then I see the Garden with that id including the Garden's attributes
# (data from each column that is on the Garden table)
# [ ] done