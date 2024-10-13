require 'rails_helper'

RSpec.describe Todo, type: :model do
  it { is_expected.to validate_presence_of(:item) }
  it { is_expected.to validate_presence_of(:priority) }
end
