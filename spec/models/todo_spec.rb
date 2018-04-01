require 'rails_helper'

RSpec.describe Todo, type: :model do
  # ensure todo model has 1:m relationship with Item
  it { should have_many(:items).dependent(:destroy) }

  # ensure columns title and created_by are present
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
