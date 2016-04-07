require 'rails_helper'

RSpec.describe Task, type: :model do
  it { is_expected.to belong_to(:owner) }
  it { is_expected.to validate_numericality_of(:priority) }
end
