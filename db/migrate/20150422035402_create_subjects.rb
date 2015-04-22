class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :code
      t.string :title

      t.timestamps null: false
    end
  end
end
