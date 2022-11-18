require 'rails_helper'

RSpec.feature 'Displaying questions' do
  context 'when there are questions to display' do
    let!(:question) { create(:question) }

    it 'lists the questions to choose from' do
      visit root_path

      expect(page).to have_text(question.title)
    end
  end
end
