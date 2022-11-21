require 'rails_helper'

# TODO:
# write test for submitting form / add submit button
# move strings out to internationalzation stuff

RSpec.feature 'Creating questions' do
  before do
    visit new_question_path
  end

  it 'allows creation of new Questions' do
    fill_in 'question_title', with: Faker::Lorem.sentence(word_count: 4)
    fill_in 'question_description', with: Faker::Lorem.sentence(word_count: 20)
    click_button 'commit'

    expect(Question.count).to eq(1)
  end

  it 'redirects to Question listing page' do
    fill_in 'question_title', with: Faker::Lorem.sentence(word_count: 4)
    fill_in 'question_description', with: Faker::Lorem.sentence(word_count: 20)
    click_button 'commit'

    expect(page).to have_current_path(questions_path)
  end

  describe 'navigation' do
    it 'displays a link to listing questions' do
      click_link('Back to Questions')

      expect(page).to have_current_path(questions_path)
    end
  end
end
