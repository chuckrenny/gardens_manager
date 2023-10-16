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
end