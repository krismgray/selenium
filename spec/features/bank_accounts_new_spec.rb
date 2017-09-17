require 'rails_helper'

feature 'Bank Accounts New', js: true do
  login_js

  context 'without bank account' do
    before(:each) do
    visit new_bank_account_path(@user)
    end

    scenario 'correct form' do
      find('#partial_form')
    end

    scenario 'link to bank accounts' do
      expect(page).to have_selector('.accounts')
    end


  end
end
