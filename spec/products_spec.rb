require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'it manages products' do
  scenario 'user can see a homepage' do
    visit '/'
    within 'h1' do
      expect(page).to have_content 'Welcome'
    end

    the 'user sees a link to add a product' do
      click_link 'Add a Product'
    end

    and_the 'User enters some text for the product name and clicks a button called "Create Product"' do
      fill_in 'add_product', with: 'Tennis balls'
      click_button 'Create Product'
    end

    and_the 'User sees the product they entered on the homepage, they are not prompted to re-submit data if they refresh the page' do
      within 'ol' do
        expect(page).to have_content 'Tennis balls'
      end
      visit '/'
    end
  end
end