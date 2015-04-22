class AddField < ActiveRecord::Migration
  def change
    add_column(:subjects, :level, :string)
  end
end
