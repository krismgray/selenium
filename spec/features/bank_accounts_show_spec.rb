require 'rails_helper'

feature 'Bank Accounts Show', js: true do
  login_js

  context 'with bank account' do
    before(:each) do
      @bank_account = FactoryGirl.create(:bank_account, user: @user)
      visit bank_account_path(@bank_account)
    end

    scenario 'correct header content' do
      expect(page).to have_content(@bank_account.institution)
    end

    scenario 'link to bank accounts' do
      expect(page).to have_selector('.back-to-accounts')
    end

    scenario 'link to edit account' do
      expect(page).to have_selector('.edit-account')
    end


  end
end
