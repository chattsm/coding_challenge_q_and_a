require 'rails_helper'

RSpec.feature 'Signing up' do
  context 'when signed in' do
    before do
      sign_in create(:user)
      visit questions_path

      click_button 'Sign out'
    end

    it 'displays confirmation message' do
      expect(page).not_to have_button('Signed out successfully')
    end

    it 'hides Sign out button' do
      expect(page).not_to have_button('Sign out')
    end

    it 'redirects to root_path' do
      expect(page).to have_current_path(root_path)
    end
  end

  context 'when logged out' do
    it 'hides Sign out button' do
      visit questions_path

      expect(page).not_to have_button('Sign out')
    end
  end
end
