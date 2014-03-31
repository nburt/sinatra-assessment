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
  end
end