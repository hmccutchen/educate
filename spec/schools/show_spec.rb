require 'rails_helper'


feature "User navigates to student form/s" do 
	scenario "User creates school with class count, can view student forms" do 
     model = School.create(school_name: "new school", class_count: "13")

     visit school_path(model.id)
      
     sleep(0.5)

    student_forms = all('.new_student')
    
    expect(student_forms.count).to eq(model.class_count)
 end
end