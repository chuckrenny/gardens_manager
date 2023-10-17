require 'rails_helper' 

RSpec.describe 'Garden Plants Index' do
  before :each do
    load_test_data
  end

  # US 5
  it "displays each associated plant with the specific garden id" do
    visit "/gardens/#{@garden1.id}/plants"

    expect(page).to have_content("#{@garden1.name} Garden")
    expect(page).to have_content("#{@plant1.name}")
    expect(page).to have_content("Height(inches): #{@plant1.height}")
    expect(page).to have_content("Flowering: #{@plant1.flowering}")
    expect(page).to have_content("#{@plant2.name}")
    expect(page).to have_content("Height(inches): #{@plant2.height}")
    expect(page).to have_content("Flowering: #{@plant2.flowering}")

    expect(page).to_not have_content("#{@garden2.name} Garden")
    expect(page).to_not have_content("#{@plant3.name}")
  end

  # US 13
  it "displays a link that redirects to a form to add a new adoptable plant" do
    visit "/gardens/#{@garden1.id}/plants"

    expect(page).to have_link("Create Plant")

    click_link("Create Plant")

    expect(current_path).to eq("/gardens/#{@garden1.id}/plants/new")
  end

  # US 16
  it "displays a link- when clicked it sorts plants in alphabetical order" do
    visit "/gardens/#{@garden1.id}/plants"

    expect(page).to have_link("Sort Alphabetical")

    click_link("Sort Alphabetical")
    expect(@plant1.name).to appear_before(@plant2.name)
  end

  describe "As a visitor" do
    describe "when I visit /gardens/:id/plants index page" do
      # US 18
      it "displays a link to update the plant" do
        visit "/gardens/#{@garden2.id}/plants"

        within("#plant-#{@plant3.id}") do
          click_link("Edit Plant")
        end

        fill_in "Name", with: "Raspberry Bush 2.0"
        fill_in "Height", with: 4
        uncheck "Flowering"
        click_button "Update Plant"

        expect(current_path).to eq("/plants/#{@plant3.id}")
        expect(page).to have_content("Raspberry Bush 2.0")
        expect(page).to have_content("Height(inches): 4")
        expect(page).to have_content("Flowering: false")
      end
    end
  end
end