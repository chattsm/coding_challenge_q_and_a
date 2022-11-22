require 'rails_helper'

RSpec.feature 'Displaying Answers to Questions' do
  let(:question_user) { create(:user) }
  let(:question) { create(:question, user: question_user) }

  context 'when the question has answers' do
    let(:answer_user) { create(:user) }
    let!(:answer) { create(:answer, question: question, user: answer_user) }

    before do
      visit question_path(question)
    end

    it 'displays the answers' do
      expect(page).to have_text(answer.content)
    end
  end

  context 'when the question does not have answers' do
    before do
      visit question_path(question)
    end

    it 'displays a useful message' do
      expect(page).to have_text(t('answers.none'))
    end
  end
end
