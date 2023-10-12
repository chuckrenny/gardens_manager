require "rails_helper" 

RSpec.describe Plant, type: :model do
  describe "relationships" do
    it {should belong_to :garden}
  end

  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :height}
    it { should allow_value(false).for(:flowering) }
    it { should allow_value(true).for(:flowering) }
  end
end