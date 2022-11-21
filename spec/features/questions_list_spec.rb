require 'rails_helper'

RSpec.feature 'Listing questions' do
  context 'when there are questions to list' do
    let!(:question) { create(:question) }

    before do
      visit root_path
    end

    it 'lists the questions to choose from' do
      expect(page).to have_text(question.title)
    end

    it 'links to the questions to choose from' do
      click_link(question.title)

      expect(page).to have_current_path(question_path(question))
    end
  end

  context 'when there are no questions to list' do
    it 'displays a useful message' do
      visit root_path

      expect(page).to have_text(t('questions.none'))
    end
  end

  describe 'navigation' do
    it 'displays a link to create a new question' do
      visit root_path

      click_link(t('questions.new'))

      expect(page).to have_current_path(new_question_path)
    end
  end
end
