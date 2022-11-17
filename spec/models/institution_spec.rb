require 'rails_helper'

RSpec.describe Institution, type: :model do
  it { should belong_to :developer }
  it { should validate_presence_of :name }
  it { should validate_presence_of :city }
  it { should validate_presence_of :state }
  it { should validate_presence_of :degree }
  it { should validate_presence_of :major }
  it { should validate_presence_of :graduation }
end
