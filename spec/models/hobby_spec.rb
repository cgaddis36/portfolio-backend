require 'rails_helper'

RSpec.describe Hobby, type: :model do
  it { should belong_to :developer }
  it { should validate_presence_of :name }
  it { should validate_presence_of :video }
  it { should validate_presence_of :image }
end
