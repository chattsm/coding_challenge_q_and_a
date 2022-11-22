require 'rails_helper'

RSpec.describe Question do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:answers) }
  end
end
