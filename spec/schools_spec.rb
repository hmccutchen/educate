require 'rails_helper'

RSpec.describe 'school form', type: :system do
  describe 'index page' do
    it 'shows the school landing page content' do

      visit new_school_path

      expect(page).to have_content('Create Your School')
    end
  end
end