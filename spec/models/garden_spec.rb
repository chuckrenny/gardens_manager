require "rails_helper" 

RSpec.describe Garden, type: :model do
  describe "relationships" do
    it {should have_many :plants}
  end

  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :species}
    it { should allow_value(false).for(:watered) }
    it { should allow_value(true).for(:watered) }
  end
end