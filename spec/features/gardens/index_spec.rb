require 'rails_helper'

RSpec.describe Garden, type: :feature do
  before :each do
    load_test_data
  end

  # US 1
  it 'displays the name of each Garden record in the system' do
    visit '/gardens' 

    expect(page).to have_content(@garden1.name)
    expect(page).to have_content(@garden2.name)
    expect(page).to have_content(@garden3.name)
  end

  # US 2
  it displa
end