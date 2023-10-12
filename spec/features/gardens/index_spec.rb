require 'rails_helper'

RSpec.describe 'Gardens Index' do
  before :each do
    @garden1 = Garden.create!(name: "Eden", species: 500, watered: true)
    @garden2 = Garden.create!(name: "Olympus", species: 300, watered: true)
    @garden3 = Garden.create!(name: "Butterfly", species: 100, watered: false)
  end

  # US 1
  it 'displays the name of each Garden record in the system' do
    visit '/gardens' 

    expect(page).to have_content(@garden1.name)
    expect(page).to have_content(@garden2.name)
    expect(page).to have_content(@garden3.name)
  end
end