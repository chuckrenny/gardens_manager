require 'rails_helper'

RSpec.describe Garden, type: :feature do
  describe "As a visitor" do
    describe "when I visit /gardens/:id/edit" do
      before :each do
        load_test_data
      end

      # US 17
      it "displays a form to update the garden" do
        visit "/gardens"

        within("#garden-#{@garden3.id}") do
          click_link("Edit Garden")
        end

        expect(current_path).to eq("/gardens/#{@garden3.id}/edit")

        fill_in "Name", with: "Butterfly 2.0"
        fill_in "Species", with: 101
        check "Watered"
        click_button "Update Garden"

        expect(current_path).to eq("/gardens/#{@garden3.id}")
        expect(page).to have_content("Butterfly 2.0 Garden")
        expect(page).to have_content("Total Species: 101")
        expect(page).to have_content("Recently Watered: true")
      end
    end
  end
end