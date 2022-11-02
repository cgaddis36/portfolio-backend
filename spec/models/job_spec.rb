require 'rails_helper'

RSpec.describe Job, type: :model do
  it { should validate_presence_of :title }
  it { should validate_presence_of :summary }
  it { should have_many :projects }
end
