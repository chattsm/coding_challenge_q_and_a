require 'rails_helper'

RSpec.describe Answer do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:question) }
  end
end
