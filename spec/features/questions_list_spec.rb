require 'rails_helper'

RSpec.feature 'Displaying questions' do
  context 'when there are questions to display' do
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

  context 'when there are no questions to display' do
    it 'displays a useful message' do
      visit root_path

      expect(page).to have_text(t(:no_questions))
    end
  end
end
