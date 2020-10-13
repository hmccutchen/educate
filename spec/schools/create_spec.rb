require 'rails_helper'


feature "User visits homepage" do
  scenario "User sees the create text for a school" do
    visit new_school_path

    expect(page).to have_content("Create Your School")
  end

  scenario "user creates new school" do 
    model = School.new(school_name: "new school", class_count: 20)
    school_count = School.count

    visit new_school_path

    sleep(0.5)
     
     school_form = find('.new_school')

     within(school_form) do
      
      school_name = find_by_id("school_school_name")

      fill_in "school_school_name", with: model.school_name
      fill_in "school_class_count", with: model.class_count

      click_on "submit"
    end

    expect(page).to have_content("You've created a new School!", wait: 3)
    expect(School.count).to eq school_count + 1
  end
end