class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :student_email
      t.integer :school_id

      t.timestamps
    end
  end
end
