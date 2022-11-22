require 'rails_helper'

RSpec.feature 'Displaying individual question' do
  let(:question) { create(:question) }

  before do
    visit question_path(question)
  end

  it 'displays the question title' do
    expect(page).to have_text(question.title)
  end

  it 'displays the question description' do
    expect(page).to have_text(question.description)
  end

  it 'displays a link to listing questions' do
    click_link('Questions')

    expect(page).to have_current_path(questions_path)
  end
end
