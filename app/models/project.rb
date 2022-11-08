class Project < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :url 
  validates_presence_of :frameworks
  validates_presence_of :languages 
  
  belongs_to :job, optional: true
end
