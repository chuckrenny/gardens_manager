class Plant < ApplicationRecord
  belongs_to :garden

  validates_presence_of :name, presence: true
  validates_presence_of :height, presence: true
  validates_inclusion_of :flowering, in: [true, false]
end