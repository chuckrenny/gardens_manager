require "rails_helper" 

RSpec.describe Plant, type: :model do
  before :each do
    load_test_data
  end

  describe "relationships" do
    it {should belong_to :garden}
  end

  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :height}
    it { should allow_value(false).for(:flowering) }
    it { should allow_value(true).for(:flowering) }
  end

  describe "Class Methods" do
    it ".true_records" do
      expect(@garden1.plants.true_records).to eq([@plant1, @plant2])
    end
  end
end