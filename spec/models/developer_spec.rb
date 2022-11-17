require 'rails_helper'

RSpec.describe Developer, type: :model do 
  it { should have_many :jobs }
  it { should have_many :institutions }
  it { should have_many :projects }

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :email }
end 