require 'rails_helper'

RSpec.describe 'school form', type: :system do
  describe 'create page' do
    it 'shows the school landing page content' do

      visit new_school_path

      expect(page).to have_content('Create Your School')
    end

    it 'shows a success messege on school creation' do 
    	model = School.create(school_name: "school name", class_count: 1500)
   
       visit new_school_path


       sleep(0.5)

    expect(model.school_name).to eq("school name")
    expect(model.class_count).to eq(1500)
   end
 end
end