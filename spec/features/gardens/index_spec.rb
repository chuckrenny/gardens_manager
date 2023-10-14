require 'rails_helper'

RSpec.describe Garden, type: :feature do
  before :each do
    load_test_data
  end

  # US 1
  it "displays the name of each Garden record in the system" do
    visit "/gardens"

    expect(page).to have_content(@garden1.name)
    expect(page).to have_content(@garden2.name)
    expect(page).to have_content(@garden3.name)
  end

  # US 6
  it "displays the records ordered by recently created" do
    visit "/gardens"

    expect(page).to have_content("Created at: #{@garden4.created_at}")
    expect(@garden4.name).to appear_before(@garden3.name)
    expect(@garden3.name).to appear_before(@garden2.name)
    expect(@garden2.name).to appear_before(@garden1.name)
    expect(@garden1.name).to_not appear_before(@garden4.name)
  end

  
  # US 8
  it "displays a link at header and when clicked it redirects to the Plants Index Page" do 
    visit "/gardens"

    expect(page).to have_link("Plants Index")

    click_link "Plants Index"

    expect(current_path).to eq("/plants")
    save_and_open_page
  end
end