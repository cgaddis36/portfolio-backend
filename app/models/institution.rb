class Institution < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :degree
  validates_presence_of :major
  validates_presence_of :graduation
end
