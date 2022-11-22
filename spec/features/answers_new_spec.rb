require 'rails_helper'

RSpec.feature 'Creating Answers to Questions' do
  let(:user) { create(:user) }
  let(:question) { create(:question, user: user) }

  context 'when logged in' do
    before do
      sign_in user
      visit question_path(question)
      click_link 'Create new'
    end

    it 'allows creation of new Answers to Questions' do
      fill_in 'answer_content', with: Faker::Lorem.sentence(word_count: 20)
      click_button 'Create'

      expect(question.answers.count).to eq(1)
    end

    it 'redirects to Question show page' do
      fill_in 'answer_content', with: Faker::Lorem.sentence(word_count: 20)
      click_button 'Create'

      expect(page).to have_current_path(question_path(question))
    end

    it 'displays a link to listing questions' do
      click_link('Questions')

      expect(page).to have_current_path(questions_path)
    end

    it 'displays a link back to the question' do
      click_link(t('questions.back'))

      expect(page).to have_current_path(question_path(question))
    end
  end

  context 'when logged out' do
    before do
      visit question_path(question)
      click_link 'Create new'
    end

    it 'displays the correct message' do
      expect(page).to have_content('You need to sign in or sign up before continuing')
    end

    it 'redirects to login page' do
      expect(page).to have_current_path(new_user_session_path)
    end
  end
end
