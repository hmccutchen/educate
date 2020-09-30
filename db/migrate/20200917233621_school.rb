class School < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :school_name, null: false
      t.integer :class_count, null: false
      t.datetime :school_startdate
    end
  end
end
