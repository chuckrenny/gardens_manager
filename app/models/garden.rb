class Garden < ApplicationRecord
  has_many :plants

  validates_presence_of :name, presence: true
  validates_presence_of :species, presence: true
  validates_inclusion_of :watered, in: [true, false]

  def self.recently_created
    order(created_at: :desc)
  end

  def associated_plants
    self.plants.count
  end
end