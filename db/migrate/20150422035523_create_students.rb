class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :student_code
      t.string :first_name
      t.string :last_name
      t.string :year

      t.timestamps null: false
    end
  end
end
