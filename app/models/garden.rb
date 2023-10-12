class Garden < ApplicationRecord
  has_many :plants

  validates_presence_of :name, presence: true
  validates_presence_of :species, presence: true
  validates_inclusion_of :watered, in: [true, false]
end