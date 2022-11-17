class Job < ApplicationRecord
  validates_presence_of :title 
  validates_presence_of :summary
  has_many :projects
  belongs_to :developer
end
