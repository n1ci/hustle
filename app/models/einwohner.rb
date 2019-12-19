class Einwohner < ApplicationRecord
  belongs_to :stadt
  validates_presence_of :name
end
