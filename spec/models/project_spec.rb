require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should belong_to :developer }
  it { should validate_presence_of :name }
  it { should validate_presence_of :languages }
  it { should validate_presence_of :frameworks }
  it { should validate_presence_of :url }
  it { should validate_presence_of :description }
end
