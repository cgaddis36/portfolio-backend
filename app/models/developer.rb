class Developer < ApplicationRecord  
  validates_presence_of :email 
  validates_presence_of :first_name
  validates_presence_of :last_name
  has_many :projects 
  has_many :jobs 
  has_many :institutions 
  has_many :hobbies
end 