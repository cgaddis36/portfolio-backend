class Hobby < ApplicationRecord
  belongs_to :developer
  validates_presence_of :name 
  validates_presence_of :video 
  validates_presence_of :image
end
