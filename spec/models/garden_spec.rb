require "rails_helper" 

RSpec.describe Garden, type: :model do
  before :each do
    load_test_data
  end

  describe "relationships" do
    it {  should have_many :plants}
  end

  describe "validations" do
    it { should validate_presence_of :name}
    it { should validate_presence_of :species}
    it { should allow_value(false).for(:watered) }
    it { should allow_value(true).for(:watered) }
  end

  describe "Class Methods" do
    it ".recently_created" do
      @garden = Garden.recently_created

      expect(@garden.first).to eq(@garden4)
      expect(@garden.first.created_at).to be > (@garden.last.created_at)
    end
  end

  describe "Instance Methods" do
    it "#associated_plants" do
     expect(@garden1.associated_plants).to eq(2)
    end
  end
end