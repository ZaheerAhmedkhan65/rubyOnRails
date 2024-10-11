class AddAttrsToAssignments < ActiveRecord::Migration[7.2]
  def change
    add_column :assignments, :assignment_week, :string
  end
end
