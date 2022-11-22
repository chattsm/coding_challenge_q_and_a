require 'rails_helper'

RSpec.feature 'Signing up' do
  context 'when signed out' do
    let(:email) { Faker::Internet.email }
    let(:password) { Faker::Alphanumeric.alphanumeric(number: 8) }

    before do
      visit new_user_registration_path

      fill_in 'Email', with: email
      fill_in 'Password', with: password
      fill_in 'Password confirmation', with: password
      click_button 'Sign up'
    end

    it 'displays confirmation message' do
      expect(page).to have_content('Welcome! You have signed up successfully')
    end

    it 'redirects to root_path' do
      expect(page).to have_current_path(root_path)
    end
  end

  context 'when already signed in' do
    before do
      sign_in create(:user)

      visit new_user_registration_path
    end

    it 'displays confirmation message' do
      expect(page).to have_content('You are already signed in')
    end

    it 'redirects to root_path' do
      expect(page).to have_current_path(root_path)
    end
  end
end
